def extract_urls(text)
  #pattern =/(?:http(s?)|ftp):\/\/[\S]+/
  #text.match?(text)
  pattern = text.match?(/(?:https?|ftp):\/\/[\S]+/)
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

puts extract_urls(sample_text)
#puts extract_urls("https://example.com/search?q=ruby+regex")
#puts extract_urls("http://www.example.org")
#puts extract_urls("ftp://example.com/resources")
