require_relative 'room'
require_relative 'bathroom'
require_relative 'ffe'

describe 'Creating Rooms' do
  before(:all) do
    @bathroom = Bathroom.new
  end

  describe 'initialize bathroom' do
    it 'creates a bathroom with a  toilet' do
      expect(@bathroom.toilet).to be_instance_of FFnE
    end
    it 'that toilet defaults to dirt' do
      expect(@bathroom.toilet.dirty).to eq(7)
    end
    it 'that bathroom also has a floor' do
      expect(@bathroom.floor).to be_instance_of FFnE
    end
  end

  describe 'check cleanliness of item' do
    it 'returns false if item is dirty' do
      expect(@bathroom.toilet.clean?).to eq(false)
    end
  end

end