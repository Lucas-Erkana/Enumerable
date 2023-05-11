module MyEnumerable
    def all?
      @list.each do |i|
        return false unless yield i
      end
      true
    end
  
    def any?
      @list.each do |i|
        return true if yield i
      end
      false
    end
  
    def filter
      result = []
      @list.each do |i|
        result << i if yield i
      end
      result
    end
  end
  