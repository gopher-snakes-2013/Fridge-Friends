require 'spec_helper'

describe Fridge do
  it { should validate_presence_of(:name) }
  it { should have_many(:items) }
end