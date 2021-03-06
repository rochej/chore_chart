class FFnE
  attr_reader :item_name, :dirty, :desired_cleaning_frequency, :points

  def initialize (options = {})
    # @item_name = options.fetch(:item_name)
    # @dirty = options.fetch(:clean, 7)
    # @desired_cleaning_frequency = options.fetch(:desired_cleaning_frequency, 7)
    # @points = options.fetch(:points, 2)
    @item_name = options.fetch(:item_name)
    @dirty = options.fetch(:dirty)
    @desired_cleaning_frequency = options.fetch(:desired_cleaning_frequency)
    @points = options.fetch(:points)

  end

  def clean?
    @dirty < 2 ? true : false
  end

end