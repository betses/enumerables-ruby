require_relative 'enumarable'
class Mylist
  def initialize(*args)
    @list = args
  end

  include Enumerables

  def each
    @list.each { |e| yield(e) if block_given? }
  end
end
