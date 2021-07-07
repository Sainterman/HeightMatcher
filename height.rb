require './HeightMatcher.rb'
include HeightMatcher

players = fetch_players
puts "Welcome to NBA height matcher"
puts "To find players given their height please input the height in inches"
height = ask_height
puts match_height_to_names(players, height)