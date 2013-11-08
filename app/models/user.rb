class User < ActiveRecord::Base
  # attr_accessible :phone_number, :name, :customer_id
  include Clearance::User
end
