require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |k,v| v << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |k,v|
        puts "  #{k.to_s.split("_").map { |x| x.capitalize }.join(" ")}: #{v.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  list = []
  holiday_hash.each do |season,holiday|
    holiday.each { |k,v| list << k if v.include?("BBQ")}
  end
  list
end
