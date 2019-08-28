require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative 'player.rb'

html = open("https://www.espn.com/nba/team/roster/_/name/atl/atlanta-hawks")

doc = Nokogiri::HTML(html)

player_elements_arr = doc.css(".Table2__tr.Table2__tr--lg.Table2__even")

player_elements_arr.each do |player|
    name = player.css("a")[1].text
    position = player.css(".Table2__td")[2].text
    age = player.css(".Table2__td")[3].text
    url = player.css("a")[1].attr('href')

    Player.new(name, position, age, url)
end

binding.pry



