module Enumerables
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?; end

  def filter?; end
end
