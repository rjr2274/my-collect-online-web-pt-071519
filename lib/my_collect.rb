require "pry"
def my_collect(array)
  i = 0
  collection_new = []
  while i > array.length
    collection_new << yield(array[i])
    i += 1
  end
  collection_new
end

# binding.pry

my_collect(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
