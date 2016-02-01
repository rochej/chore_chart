require_relative 'ffe'
require 'forwardable'

class Room
  extend Forwardable
  attr_reader :floor

  def initialize(options = {})
    @items = []
    @floor = FFnE.new(item_name:floor)
    post_initialize(options)
  end

  def post_initialize
    #runs post_initialize methods of subclasses
  end

  def add_items(item)
    @floor = FFnE.new(item_name:floor)
    @items << @floor
  end

  def room_clean?

  end
end

#how do i add all the FFE items to an enumerable in a subclass when the subclass does not necesarrily want to know that the enumerable container exists?
#1) make a items factory--which is its own class
#2) then add items to room which is our container
#3) house has many rooms--a container object?