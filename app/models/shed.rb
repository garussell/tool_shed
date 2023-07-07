class Shed < ApplicationRecord
  has_many :tools
  
  def self.order_by_most_recent
    order(created_at: :desc)
  end
end