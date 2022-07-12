module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    ary = []
    list.each do |i|
      ary.push(i) if yield i
    end
    p ary.length == list.length
  end

  def any?
    ary = []
    list.each do |i|
      ary.push(i) if yield i
    end
    p !ary.empty?
  end

  def filter
    ary = []
    list.each do |i|
      ary.push(i) if yield i
    end
    p ary
  end

  def max
    max_num = 0
    list.each do |i|
      i > max_num ? max_num = i : i
    end
    p max_num
  end

  def min
    min_num = 999
    list.each do |i|
      i < min_num ? min_num = i : i
    end
    p min_num
  end
end
