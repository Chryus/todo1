holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def winter_supplies(holiday_supplies)
  winter_supplies = []
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies.each do |item|
      winter_supplies << item
    end
  end
  puts winter_supplies
end

winter_supplies(holiday_supplies)