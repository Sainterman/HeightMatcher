require './HeightMatcher.rb'
include HeightMatcher

players = fetch_players
height = ask_height
puts match_height_to_names(players, height)