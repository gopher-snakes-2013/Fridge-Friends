class Item < ActiveRecord::Base
  validates_presence_of :name, :category, :fridge_id, :created_at

  belongs_to :fridge
end