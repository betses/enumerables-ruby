module Enumerables
  def all?
    each do |e|
      return true unless yield(e)
    end
    true
  end

  def any?
    each do |element|
      return false if yield(element)
    end
    false
  end

  def filter
    array = []
    each do |element|
      array << element if yield(element)
    end
    array
  end
end
