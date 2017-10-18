require "watir"
require "pry"

browser = Watir::Browser.new
browser.goto 'google.com'

search_bar = browser.text_field(class: "gsfi")
search_bar.set("pornhub")
search_bar.send_keys(:enter)

browser.driver.manage.timeouts.implicit_wait = 3

submit_button = browser.link(:text => "PornHub")
submit_button.exist?
submit_button.click

search_bar = browser.text_field(id: "searchInput")
search_bar.set("Mia Khalifa")
search_bar.send_keys(:enter)



#binding.pry
#search_result_divs = browser.divs(class:"rc")
#Maintenant il nous reste plus qu'à passer sur les éléments
#de cette array et récupérer le texte :
#search_result_divs.each { |div| puts div.h3.text }

#Un corsaire attentif pourrait remarquer que faire directement
#search_result_h3s = browser.h3s(class:"r")

#browser.close

#boucle infinita
while(1)
end
