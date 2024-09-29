https_pattern = /^https:\/\//

p 'https://example.com'.match?(https_pattern)
p 'http://example.com'.match?(https_pattern)

newline_pattern = /\\n/

p '改行は\n'.match?(newline_pattern)
p 'タブは\t'.match?(newline_pattern)
