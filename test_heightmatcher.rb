require './HeightMatcher.rb'
require 'test/unit'

class TestHieghtMatcher < Test::Unit::TestCase
    include HeightMatcher
    def setup
        @players = fetch_players
    end
    
    def test_match
        players_70inches = ["Brevin Knight", "Mike Wilks"]
        assert_equal(players_70inches, match_height_to_names(@players, 70))
    end

    def test_not_found
        players_0inches = []
        assert_equal(players_0inches, match_height_to_names(@players ,0))
    end
end
