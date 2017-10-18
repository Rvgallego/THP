require "nokogiri"
require "open-uri"

def get_coinmarketcap
  html = open("https://coinmarketcap.com/all/views/all/")
  doc = Nokogiri::HTML(html)

  doc.search(".no-wrap").map do |element|
    puts element.inner_text
  end
end

#def get_all_the_emails_of_val_doise_townhalls
get_coinmarketcap
#end
