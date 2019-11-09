require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
 result = {}
 for i in nds do
   dir_total = 0
   for k in i[:movies] do
     dir_total += k[:worldwide_gross]
   end
   result[i[:name]] = dir_total
 end
result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  for i in director_data[:movies] do
    total += i[:worldwide_gross]
  end
  total
end
