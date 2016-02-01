require_relative 'room'

class Bathroom < Room
  attr_reader :toilet
  def post_initialize (options = {})
    @toilet = FFnE.new(item_name:toilet)
  end
end