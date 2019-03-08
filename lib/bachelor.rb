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
  data.each do |key, value|
    value.each do |key2|
      if key2.has_value?(occupation)
        key2.each do |key3, value2|
          if key3 == "name"
            return value2
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |key, value|
    value.each do |key2|
      if key2.has_value?(hometown)
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |key2|
      if key2.has_value?(hometown)
        key2.each do |key3, value2|
          if key3 == "occupation"
            return value2
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |key, value|
    if key == season
      value.each do |key2|
        key2.each do |key3, value2|
          if key3 == "age"
            ages << value2.to_i
          end
        end
      end
    end
  end
  total = 0
  for num in ages
    total += num
  end
  average = (total / ages.size).round
  average
end
