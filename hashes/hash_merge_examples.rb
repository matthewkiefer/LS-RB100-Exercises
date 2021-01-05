# hash_merge_examples

hash1 = {a: 100, b: 200, c: 300}
hash2 = {c: 375, d: 500}

puts "hash1 is currently #{hash1} and hash2 is currently #{hash2}\n\n"
puts "Normal .merge gives us #{hash1.merge(hash2)}, after which hash1 is still #{hash1}\n\n"
puts "Bang merge gives us #{hash1.merge!(hash2)}, after which hash1 is #{hash1}\n"