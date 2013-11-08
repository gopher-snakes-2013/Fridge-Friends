class User < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true
  include Clearance::User
end
