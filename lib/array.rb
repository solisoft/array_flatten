module Flatten
  def flatten_me
    new_array = []
    self.each do |el|
      if el.class == Array
        new_array += el.flatten_me 
      else
        new_array << el
      end
    end
    new_array
  end
end

class Array
  include Flatten
end

# [1, [2, [3, 7, 8]], 4].flatten_me

