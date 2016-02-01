class FFnEFactory
  def self.build (config, ffne_class = FFnE, room_class = Room)
    room_class.new(
      config.collect {|ffne_attribute|
        ffne_class.new(
          item_name: ffne_attribute[0],
          dirty: ffne_attribute[1],
          desired_cleaning_frequency: ffne_attribute[2],
          points: ffne_attribute[3])
      })
  end
end