require "rails_helper"

RSpec.describe Tool do
  it {should belong_to :shed}

  describe "#instance methods" do
    before(:each) do
    # Woodworking Shop
      @wood_shop = Shed.create!(name: "Woodworking Shop", city: "Denver", color: "Yellow", space_available: true)

      # Woodworking Tools
      @square = @wood_shop.tools.create!(shed_id: 1, quantity: 1, tool_name: "Combination Square", description: "A tool used to measure right angles", available: true)
      @tape_measure = @wood_shop.tools.create!(shed_id: 1, quantity: 2, tool_name: "Tape Measure", description: "A useful tool to measure lengths", available: true)
      @dovetail_saw = @wood_shop.tools.create!(shed_id: 1, quantity: 1, tool_name: "Dovetail Saw", description: "A saw for cutting dovetails", available: false)
      @bench_plain = @wood_shop.tools.create!(shed_id: 1, quantity: 4, tool_name: "Bench Plane", description: "A tool used to flatten wooden surfaces.", available: false)
    end
    
    # User Story 15
    describe "#index" do
      it "will only show tools that are available" do
        available_tools = Tool.where(available: true)

        expect(available_tools).to include(@square)
        expect(available_tools).to include(@tape_measure)
        expect(available_tools).not_to include(@dovetail_saw)
        expect(available_tools).not_to include(@bench_plain)
      end
    end
  end
end