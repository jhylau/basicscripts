require 'nokogiri'
require 'open-uri'
require 'yaml'

doc = Nokogiri::HTML(open("http://www.snopes.com"))

name_array = []
doc.css('a').each do |node|
  name_array.push(node.text)
end

names = name_array.to_yaml
filename = 'snopesa.txt'

File.open filename, 'w' do |f|
  f.write names
end



# doc.xpath('//h2').each do |node|
#   quotes_array.push(node.text)
# end
# 
# filename = 'politifact.txt'
# 
# names = name_array.to_yaml
# quotes = quote_array.to_yaml
# 
# file.open filename, 'w' do |f|
#   f.write names
#   f.write quotes
# end
