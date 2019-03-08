require 'mechanize'
require 'csv'

agent = Mechanize.new

page = agent.get('https://www.movecars.com/states/alabama.htm')

page.search('.state-results a').each {|link| 
	puts "Company_Name: #{link.text} \nCompany_Url: #{link['href']}"}
