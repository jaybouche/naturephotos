require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
   describe "photos#show action" do
    it "should successfully show the page if the photo is found" do
      photo = FactoryBot.create(:photo)
      get :show, params: { id: photo.id }
      expect(response).to have_http_status(:success)
    end
  end
end