require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  it "has a valid factory" do
     FactoryGirl.build(:user).should be_valid
  end

  #it "has no name" do
  #   FactoryGirl.build(:invalid_user_no_name).user_not be_valid
  #end

end
