require 'rails_helper'

RSpec.describe FoodService do
  context 'returns food data' do
    it 'returns food by a given item', :vcr do
      item = "sweet potato"
      foods = FoodService.find_foods_by_name(item)
      expect(foods).to have_key(:foods)
    end

    it "returns total hits for food", :vcr do
      item = "sweet potato"
      foods = FoodService.find_total_hits(item)
      expect(foods[:totalHits]).to eq(48008)
    end
  end
end
