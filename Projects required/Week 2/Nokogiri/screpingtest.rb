require "nokogiri"
require "open-uri"

def get_the_email_of_a_townhal_from_its_webpage
  doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))

  doc.css("td.Style27", "p.Style22").select do |element|
    puts element.text.scan(/.+@.+\.\w+/)
  end
end

#def get_all_the_emails_of_val_doise_townhalls

#end

get_the_email_of_a_townhal_from_its_webpage
