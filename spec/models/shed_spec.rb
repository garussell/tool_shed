require "rails_helper"

RSpec.describe Shed do
  it {should have_many :tools}
end