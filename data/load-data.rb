require "rubygems"
require "activerecord"

require "pp"

#
# Database Junk
#

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "development.sqlite3"
)

class Card < ActiveRecord::Base
  def self.new_from_text( card_string )
    card_fields = card_string.split( "\n" )
    card_hash = {
      :name => card_fields[0],
      :cost => card_fields[1],
      :card_type => card_fields[2]
    }

    if card_hash[:card_type] =~ /^Creature/
      card_hash[:pt]   = card_fields[3]
      card_hash[:text] = card_fields[4..-1].join unless card_fields[4..-1].nil?
    else
      card_hash[:text] = card_fields[3..-1].join unless card_fields[3..-1].nil?
    end

    return self.new( card_hash )
  end
end

# 
# File loading
#

cards = File.read( "Legacy-2009-07-27.txt" )
cards.split( "\n\n" ).each do |card_string|
  puts "Error with:\n#{card_string}" unless Card.new_from_text( card_string ).save
end

