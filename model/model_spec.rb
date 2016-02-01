require_relative 'room'
require_relative 'ffe'
require_relative 'ffefactory'

# describe 'Creating Rooms' do
#   before(:all) do
#     @bathroom = Room.new
#   end

#   describe 'initialize bathroom' do
#     it 'creates a bathroom with a  toilet' do
#       expect(@bathroom.toilet).to be_instance_of FFnE
#     end
#     it 'that toilet defaults to dirt' do
#       expect(@bathroom.toilet.dirty).to eq(7)
#     end
#     it 'that bathroom also has a floor' do
#       expect(@bathroom.floor).to be_instance_of FFnE
#     end
#   end

#   describe 'check cleanliness of item' do
#     it 'returns false if item is dirty' do
#       expect(@bathroom.toilet.clean?).to eq(false)
#     end
#   end

# end

describe FFnEFactory do
  before(:all) do
    bathroom_config = [ ["name", "toilet"],
                        ["dirty", 7],
                        ["desired_cleaning_frequency", 7],
                        ["points", 2]
                      ]



    @bathroom = FFnEFactory.build(bathroom_config, FFnE, Room)
  end

  describe 'initialize toilet' do
    it 'creates a dirty toilet' do
      expect(@bathroom.toilet.dirty).to eq(7)
    end
  end
end