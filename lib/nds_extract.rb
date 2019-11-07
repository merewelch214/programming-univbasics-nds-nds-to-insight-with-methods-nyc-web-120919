require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  row_index = 0 
  dir_hash = {}
  final_hash = {}
  dir_gross = 0
  
  while row_index < nds.length do
    
    column_index = 0 
    while column_index < nds[row_index][:movies].length do
      dir_gross += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    
    dir_hash = {nds[row_index][:name] => dir_gross}
    final_hash = final_hash.merge(dir_hash)
    row_index += 1
  end
  
  return final_hash
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  dir_gross = 0  
  row_item = 0
  while row_item < director_data[:movies].length do
    dir_gross += director_data[:movies][row_item][:worldwide_gross]
    row_item += 1
  end
return dir_gross
end


