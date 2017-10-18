###Basic XPath

require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))
doc.xpath('//h3/a').each do |node|
  puts node.text
end

The XPath used in this program is:

	//h3/a
-----------

comment récupérer le XPath à partir de l'inspecteur d'éléments de Chrome.
