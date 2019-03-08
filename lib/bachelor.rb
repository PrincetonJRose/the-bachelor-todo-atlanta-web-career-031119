require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |key, value|
    if key == season
      value.each do |key2|
        if key2.has_value?("Winner")
          key2.each do |key3, value2|
            if key3 == "name"
              return value2.split(' ').first
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
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
