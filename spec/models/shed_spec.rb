require "rails_helper"

RSpec.describe Shed do
  it {should have_many :tools}

  describe "instance methods" do
    before :each do
      @shed1 = Shed.create!(name: "Large One", city: "Denver", color: "Azul", space_available: true, created_at: 2023-07-05)
      @shed2 = Shed.create!(name: "Medium One", city: "Aurora", color: "Pink", space_available: true, created_at: 2023-07-04)
      @shed3 = Shed.create!(name: "Small One", city: "Loveland", color: "Yellow", space_available: false, created_at: 2023-07-07)
    end
  
    # User Story 6
    describe "#order by most recent" do
      it "orders sheds by the most recently created" do
        ordered_sheds = Shed.order(created_at: :desc)
      
        expect(ordered_sheds.first.id).to eq(@shed3.id)
        expect(ordered_sheds[1].id).to eq(@shed2.id)
        expect(ordered_sheds.last.id).to eq(@shed1.id)
      end
    end
  end
end