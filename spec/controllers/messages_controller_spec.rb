require 'rails_helper'
require 'spec_helper'

RSpec.describe MessagesController, type: :controller do

 describe "GET #index" do
    it "index: returns http success" do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe "GET #show" do
    it "show: returns http success" do
      message = create(:message)
      get :show, id: message
      expect(response).to have_http_status(302)
    end   
  end

end
