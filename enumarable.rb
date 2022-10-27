module Enumerables
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?; end

  def filter?; end

  def any?
    each do |element|
      return true if yield(element)
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
end
