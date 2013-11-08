require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :phone_number }
  it { should validate_presence_of :name }
end