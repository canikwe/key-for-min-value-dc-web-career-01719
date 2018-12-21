# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    collect = name_hash.collect do |name, age|
        age
    end
   while collect.length > 1 
       if collect[0] > collect[1]
           collect.shift
       else collect.delete_at(1)
       end
    end
    new_collect = name_hash.collect do |name, age|
        if age != collect[0]
            name_hash.delete(name)
            name_hash.delete(age)
        else
            name
        end
    end
    new_collect.compact!
    new_collect[0]
end