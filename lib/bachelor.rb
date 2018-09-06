def get_first_name_of_season_winner(data, season)
  data[season].each do |persondata|
    if persondata["status"] == "Winner"
        return persondata["name"].split.first
    end
    end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
      info.each do |persondata|
      if persondata["occupation"] == occupation
    return persondata["name"]
  end
end
end
end

def count_contestants_by_hometown(data, hometown)
count = 0
data.each do |season, info|
  info.each do |persondata|
    if persondata["hometown"] == hometown
      count += 1
    end
  end
end
count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |persondata|
      if persondata["hometown"] == hometown
        return persondata["occupation"]
      end

    end
  end
end

def get_average_age_for_season(data, season)
  people = 0
  age = 0

  data[season].each do |persondata|
    people += 1
    age += persondata["age"].to_f
end
average = age / people
average.round
end
