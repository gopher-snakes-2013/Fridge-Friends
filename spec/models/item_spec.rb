require 'spec_helper'

describe Item do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:fridge_id) }
  it { should validate_presence_of(:created_at) }

end