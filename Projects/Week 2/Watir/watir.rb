require "watir"
require "pry"
browser = Watir::Browser.new
browser.goto 'google.com'

search_bar = browser.text_field(class: "gsfi")
search_bar.set("buscador de yahoo")

#méthode de la barre d'entrée
search_bar.send_keys(:enter)

#méthode du clic
#submit_button = browser.button(type:"submit")
#submit_button.click

#faire du waiting
browser.driver.manage.timeouts.implicit_wait = 3

#méthode .divs qui te prend tous les divs concernés,
#----- browser.div(class:"rc")
#et les met dans une array. Voici la ligne de code :
search_result_divs = browser.divs(class:"rc")
#Maintenant il nous reste plus qu'à passer sur les éléments
#de cette array et récupérer le texte :
search_result_divs.each { |div| puts div.h3.text }

#Un corsaire attentif pourrait remarquer que faire directement
#search_result_h3s = browser.h3s(class:"r")

#browser.close

#boucle infinita
while(1)
end
