transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]
# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts "The first transaction was $#{transactions[0]}."
# * What is the value of the second transaction?
puts "The second transaction was $#{transactions[1]}."
# * What is the value of the fourth transaction?
puts "The fourth transaction was $#{transactions[3]}."
# * What is the value of the last transaction?
puts "The last transaction was $#{transactions[-1]}."
# * What is the value of the second from last transaction?
puts "The second to last transaction was $#{transactions[-2]}."
# * What is the value of the 5th from last transaction?
puts "The 5th from last transaction was $#{transactions[-5]}."
# * What is the value of the transaction with index 5?
puts "The transaction at index 5 is $#{transactions[5]}."
# * How many transactions are there in total?
puts "There are #{transactions.size} transactions in total."
# * How many positive transactions are there in total?
pos = 0
transactions.each do |num|
 if num > 0
   pos += 1
 end
end
puts "There are #{pos} positive transactions."
# * How many negative transactions are there in total?
neg = 0
transactions.each do |num|
  if num < 0
    neg += 1
  end
end
puts "There are #{neg} negative transactions."
# * What is the largest withdrawal?
puts "The largest withdrawal is $#{transactions.sort[0]}."
# * What is the largest deposit?
puts "The largest deposit is $  #{transactions.sort[-1]}."
# * What is the small withdrawal?
transactions.sort.each_with_index do |t, index|
  if t > 0
    puts "The smallest withdrawal is $#{transactions[index-1]}."
    break
  end
end
# * What is the smallest deposit?
transactions.sort.each do |t|
  if t > 0
    puts "The smallest deposit is $#{t}."
    break
  end
end
# * What is the total value of all the transactions?
total = 0
transactions.each do |t|
  total += t
end
puts "The total value of all the transactions is $#{total}."
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
balance = 239_900
transactions.each do |t|
  balance += t
end
puts "The balance is $#{balance}."

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "There are #{best_records.size} records in 'best_records'."
# * Who are all the artists listed?
puts "The artists listed are #{best_records.keys}."
# * What are all the album names in the hash?
puts "The albums in the hash are #{best_records.values}."
# * Delete the `Eminem` key-value pair from the list.
puts best_records.delete("Eminem").inspect
# * Add your favorite musician and their best album to the list.
puts best_records["Muse"] = "Origin of Symmetry".inspect
# * Change `Nirvana`'s album to another.
puts best_records["Nirvana"] = "Bleach".inspect
# * Is `Nirvana` included in `best_records`?
puts best_records.has_key?("Nirvana").inspect
# * Is `Soundgarden` included in `best_records`?
puts best_records.has_key?("Soundgarden").inspect
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
if !best_records.has_key?("Soundgarden")
  puts best_records["Soundgarden"] = "Down on the Up Side".inspect
end
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
puts "These key-value pairs have a key with less than or equal to 6 characters:"
best_records.each do |key, value|
  if key.size <= 6
    puts "#{key}, #{value}"
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
puts "These key-value pairs have a value that is greater than 10 characters:"
best_records.each do |key, value|
  if value.size > 10
    puts "#{key}, #{value}"
  end
end
