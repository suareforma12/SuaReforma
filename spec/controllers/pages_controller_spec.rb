require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'thank_you'" do
    it "returns http success" do
      get 'thank_you'
      response.should be_success
    end
  end

end
