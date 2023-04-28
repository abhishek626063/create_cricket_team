require 'rails_helper'
require 'spec_helper'

RSpec.describe PlayersController, type: :controller do
  before(:each) do 
    @player=  FactoryBot.create(:player) 
  end

  describe "GET #all_player_list" do
    context "all_player_list" do
      it "display player" do
        get :all_player_list, params: { player: @player}
        expect(response).to have_http_status :ok
      end
    end
  end

  describe "GET #show_player" do
    context "show player" do
      it "display player" do
        get :show_player, params: {use_route: '/players/:id', player: @player}
        expect(response).to have_http_status :ok
      end
    end
  end

  describe "player #create" do
    context " users created succesfully" do
      it "created user" do
        # @user = User.new(name: "abhishek",gmail: "abhish@gmail.com",age: 21, profile_pic: "hewfhnsdkfn")
        # @user.save
        # post :create, params: {use_route: '/users', user: @user}
        # expect(response).to have_http_status :ok

        params = { players: {name: "Test", age:21, gmail: "abhishek@sds", player: @player }}

        post :create, params: params 
        expect(response).to have_http_status :ok
      end
    end
  end

  describe "put #update_player" do
    context "should update player" do
      it "display updated player" do
        put :update_player, params: {use_route: '/players/:id', player: @player.id}
        expect(response).to have_http_status :ok
      end
    end
  end
      

  describe "delete #destroy_player" do
    context "should players deleted" do
      it "display deleted" do
        delete :destroy_player, params: {use_route: '/players/:id', player: @player.id}
        expect(response).to have_http_status :ok
      end
    end
  end
   
end