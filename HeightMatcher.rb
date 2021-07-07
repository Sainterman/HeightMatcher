module HeightMatcher
  require 'uri'
  require 'net/http'
  require 'json'
  
  def match_height_to_names(players, height)
      matched_players = []
      players.each do |player|
          if player["h_in"] == height.to_s
            matched_players << "#{player["first_name"]} #{player["last_name"]}"
          end
      end
      if matched_players.size > 0
          matched_players
      else
          puts "No matches found"
          []
      end
  end

  def ask_height
    height = gets.chomp
    x = Integer(height) rescue false #bool to check if input can be converted to integer
      
    #Ask for height until the input value is an integer
    until x
        puts "enter a integer value"
        height = gets.chomp
        x = Integer(height) rescue false
    end
    height
  end

  def fetch_players
    uri = URI('https://mach-eight.uc.r.appspot.com/')
    res = Net::HTTP.get_response(uri)
    if res.is_a?(Net::HTTPSuccess)
        body = JSON.load(res.body) 
        players = body.values[0].to_a
    else
        puts "https://mach-eight.uc.r.appspot.com/ could not be accessed"
        []
    end
  end

end