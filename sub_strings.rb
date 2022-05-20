my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    dictionary = dictionary.map(&:downcase)
    string = string.downcase
    final_count = Hash.new
    dictionary_length = dictionary.length()
    i = 0
    until i == dictionary_length do 
        if string.include? dictionary[i]
            count = string.scan(dictionary[i]).length 
            final_count[dictionary[i]] = count
        end
        i += 1
    end
    puts final_count
end

substrings("Howdy partner, sit down! How's it going?", my_dictionary)