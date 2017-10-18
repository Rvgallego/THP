Nokogiri is a large library, but here is example usage for parsing and examining a document:

#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://www.nokogiri.org/tutorials/installing_nokogiri.html'))

puts "### Search for nodes by css"
doc.css('nav ul.menu li a', 'article h2').each do |link|
  puts link.content
end

puts "### Search for nodes by xpath"
doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
  puts link.content
end

puts "### Or mix and match."
doc.search('nav ul.menu li a', '//article//h2').each do |link|
  puts link.content
end

------------------------------------

Encoding

Strings are always stored as UTF-8 internally.

If you want Nokogiri to handle the document encoding properly, your best bet
is to explicitly set the encoding. Here is an example of explicitly setting
the encoding to EUC-JP on the parser:

  doc = Nokogiri.XML('<foo><bar /><foo>', nil, 'EUC-JP')

------------------------------------

For the remainder of this section, assume that the first two lines of every script are:


require 'rubygems'
require 'nokogiri'

------------------------------------

Opening a page with Nokogiri and open-uri

page = Nokogiri::HTML(open("index.html"))
puts page.class   # => Nokogiri::HTML::Document

------------------------------------

The open-uri module

then you'll want to include the open-uri module, which is part of the standard
Ruby distribution but must be explicitly required:

------------------------------------

Using rest-client

You can also use the RestClient gem as we've done before. All the Nokogiri::HTML constructor needs is raw HTML as a string.


require 'rubygems'
require 'nokogiri'
require 'restclient'

page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))
puts page.class   # => Nokogiri::HTML::Document

------------------------------------

Parsing HTML --- doc = Nokogiri::HTML(html_document)
Parsing XML  --- doc = Nokogiri::XML(xml_document)

Both of these functions will take an IO object or a String object. Since both
 forms accept IO objects, we can even feed open-uri straight in to Nokogiri like this:

	doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))

------------------------------------
