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
end
