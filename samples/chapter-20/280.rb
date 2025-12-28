require 'net/http'
require 'json'
require 'time'

repository = 'ruby/ruby'
api_url = URI.parse("https://api.github.com/repos/#{repository}/pulls")

api_url.query = 'state=closed&sort=updated&direction=desc&per_page=50'
response = Net::HTTP.get(api_url)

JSON.parse(response).select { |pr| pr['merged_at'] }.each do |pr|
  puts <<~EOS
    # [#{pr['title']}](#{pr['html_url']})
    ##{pr['number']} by #{pr['user']['login']} merged at #{Time.parse(pr['merged_at']).strftime('%Y-%m-%d %H:%M')}
    > # #{pr['body'] ? pr['body'].split(/\R/).first : 'No description provided.'}
  EOS
end
