require 'rails_helper'
require 'spec_helper'

RSpec.describe Comment, type: :model do

  it "has a valid factory" do
     FactoryGirl.build(:comment).should be_valid
  end

  #it "has no content" do
  #   FactoryGirl.build(:invalid_comment_no_content).should_not be_valid
  #end

end
