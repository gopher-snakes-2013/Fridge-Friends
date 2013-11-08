class User < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true
  has_and_belongs_to_many :fridges
  include Clearance::User
end
