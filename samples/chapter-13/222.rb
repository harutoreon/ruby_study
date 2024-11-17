require 'uri'
require 'net/http'
require 'json'
require 'webmock/rspec'

class GithubStars
  def initialize(repo)
    @repo_url = URI.parse("https://api.github.com/repos/#{repo}")
  end

  def stars
    response = Net::HTTP.get(@repo_url)
    json = JSON.parse(response)
    json['stargazers_count']
  end
end

RSpec.describe GithubStars do
  describe '#stars' do
    let(:repo) { 'ruby/ruby' }
    let(:github_stars) { GithubStars.new(repo) }

    before do
      stub_request(:get, "https://api.github.com/repos/#{repo}").to_return(status:200,
                                                                           body: '{ "id": 538746, "stargazers_count": 19392 }')
    end

    it 'リポジトリのスター数を返す' do
      expect(github_stars.stars).to eq(19392)
    end
  end
end
