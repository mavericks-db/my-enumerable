require_relative 'module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end

# Test the all? method
list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

# Test the any? method
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
