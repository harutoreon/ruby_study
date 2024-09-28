pattern1 = /R.*/
p 'Ruby'.match?(pattern1)
p 'ruby'.match?(pattern1)
p m1 = 'Ruby'.match(pattern1)
p m1[0]

pattern2 = /^@./
p pattern2.match?('@example-user')
p pattern2.match?('@')
p m2 = pattern2.match('@example-user')
p m2[0]
