require_relative '../models/pub.rb'
require_relative '../models/vote.rb'
require 'pry-byebug'

Pub.delete_all()
Vote.delete_all()

pub1 = Pub.new({'name' => "Cafe Royal", 'postcode' => "EH2 2AA", 'registered' => false})
pub2 = Pub.new({'name' => "Abbotsford Bar and Restaurant", 'postcode' => "EH2 2PR", 'registered' => false})
pub3 = Pub.new({'name' => "Jolly Judge", 'postcode' => "EH1 2PB", 'registered' => false})
pub4 = Pub.new({'name' => "Bow Bar", 'postcode' => "EH1 2HH", 'registered' => false})
pub5 = Pub.new({'name' => "Restful Routes", 'postcode' => "EH1 7AB", 'registered' => false})
pub6 = Pub.new({'name' => "Red Ruby", 'postcode' => "EH7 9DD", 'registered' => false})
pub7 = Pub.new({'name' => "Sinatra''s", 'postcode' => "EH1 1AA", 'registered' => false})
pub8 = Pub.new({'name' => "Dancing Pony", 'postcode' => "EH42 1RF", 'registered' => false})
pub9 = Pub.new({'name' => "Castle Arms", 'postcode' => "EH1 2PW", 'registered' => false})
pub10 = Pub.new({'name' => "Barony Bar", 'postcode' => "EH1 3RJ", 'registered' => false})
pub11 = Pub.new({'name' => "Cumberland Bar", 'postcode' => "EH3 6RT", 'registered' => false})
pub12 = Pub.new({'name' => "Alexander Graham Bell", 'postcode' => "EH2 4JZ", 'registered' => false})
pub13 = Pub.new({'name' => "Oxford Bar", 'postcode' => "EH2 4JB", 'registered' => false})
pub14 = Pub.new({'name' => "Kay''s Bar", 'postcode' => "EH3 6HF", 'registered' => false})
pub15 = Pub.new({'name' => "Whighams Wine Cellars", 'postcode' => "EH2 4EL", 'registered' => false})
pub16 = Pub.new({'name' => "Bailie", 'postcode' => "EH3 5AL", 'registered' => false})

pub1.save
pub2.save
pub3.save
pub4.save
pub5.save
pub6.save
pub7.save
pub8.save
pub9.save
pub10.save
pub11.save
pub12.save
pub13.save
pub14.save
pub15.save
pub16.save