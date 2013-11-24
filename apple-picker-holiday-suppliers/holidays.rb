# Apple Picker

## Instructions

#Create a method, `apple_picker`, that will pick all the apples out of an array. Implement this only using `each`.

#apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
fruits = ["apple", "orange", "apple"]

def apple_picker(array)
  apples = []  
  array.each do |fruit|
    if fruit == "apple"
      apples << fruit
    end
  end
  apples
end

puts apple_picker(fruits)

# Challenge
#Implement it with `collect` and then implement it with `select`. Write a sentence about how `select` differs from `collect`.

fruits = ["apple", "orange", "apple"]
def apple_picker2(array)
  apples = []  
  array.select do |fruit|
    if fruit == "apple"
      apples << fruit
    end
  end
  apples
end

puts apple_picker2(fruits)

fruits = ["apple", "orange", "apple"]
def apple_picker3(array)
  apples = []  
  array.collect do |fruit|
    if fruit == "apple"
      apples << fruit
    end
  end
  apples
end

puts apple_picker3(fruits)

# Holiday Suppliers
#begin
#You have a bunch of decorations for various holidays organized by season.





#1. How would you access the second supply for the forth_of_july?
#ex: `holiday_supplies[:spring][:memorial_day][0]`

ap holiday_supplies[:summer][:fourth_of_july][1]

#2. Add a supply to a Winter holiday.

ap holiday_supplies[:winter][:christmas].unshift("menorah")
#or


#3. Add a supply to memorial day.
ap holiday_supplies[:spring][:memorial_day] << "hot dudes in speedos"

#4. Add a new holiday to any season with supplies.
ap holiday_supplies[:fall][:halloween] = ["eye of newt", "toe of frog"]
ap holiday_supplies

#5. Write a method to collect all Winter supplies from all the winter holidays.
#: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

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

#6. Write a loop to list out all the supplies you have for each holiday and the season.

new_hash = {}
holiday_supplies.each do |key, value|
  print "\n#{key.capitalize}:"
  value.each do |holiday, favors|
    print "\n\t#{holiday.capitalize}:"
      favors.each do |item|
        print " #{item}"
      end
  end
end

#Output:
#{}```
#Winter:
#  Christmas: Lights and Wreath
#  New Years: Party Hats
#{}```

#7. Write a method to collect all holidays with BBQ.

#`holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`
 
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

def holidays_with_bbqs(holiday_supplies)
  bbq_holidays = []
  holiday_supplies.each do |key, hash_value|
    hash_value.each do |holiday, supplies_array|
      supplies_array.each do |item|
        if item == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  puts bbq_holidays
end

puts "testing holidays w bbq #{holidays_with_bbqs(holiday_supplies)}"



=begin
this puts all supplies for all season
def find_supplies(hash)
  supplies = []
  hash.each do |key, value|
    value.each do |holiday, supplies|
      supplies.each do |supply|
        supplies << supply
      end
    end
    puts supplies
  end
end

find_supplies(holiday_supplies)


=end
