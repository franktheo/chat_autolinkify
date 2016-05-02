require 'rails_helper'
require 'spec_helper'

RSpec.describe Message, type: :model do

  it "has a valid factory" do
     FactoryGirl.build(:message).should be_valid
  end

  #it "has no content" do
  #   FactoryGirl.build(:invalid_message_no_content).should_not be_valid
  #end

  #it "has no title" do
  #   FactoryGirl.build(:invalid_message_no_title).should_not be_valid
  #end

end
