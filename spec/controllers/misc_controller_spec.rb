require 'spec_helper'

describe MiscController do

  describe "GET 'cheatsheet'" do
    it "returns http success" do
      get 'cheatsheet'
      response.should be_success
    end
  end

end
