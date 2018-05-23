require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = ""
  data.each do |season_number, information| #information is an array
    if season_number == season
      information.each do |info_hash|
        info_hash.each do |attribute, outcome|
          if outcome == "Winner"
            first_name = info_hash["name"].split(" ").first
          end
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  woman_name = ""
  data.each do |season_number, information| #information is an array
      information.each do |info_hash|
        info_hash.each do |attribute, outcome|
          if outcome == occupation
            woman_name = info_hash["name"]
          end
        end
      end
    end
  end
  woman_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
