require_relative 'room-status'
require_relative '../model/bathroom'


describe 'RoomStatus' do
  before(:all) do
      @bathroom = Bathroom.new
  end
  describe 'clean?' do
    it 'returns false if items in room are not clean' do
      expect(RoomStatus.clean?(@bathroom)).to eq(false)
    end
  end
end