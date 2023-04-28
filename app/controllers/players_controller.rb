class PlayersController < ApplicationController
  # before_action :authenticate_user!
  def all_player_list
    @players = Player.all
    # render json: @players ,status: 200
    # @players_serializers = ActiveModel::Serializer.new(@players, each_serializer: PlayerSerializer, root: "players")
    # render json: @players_serializers
    # respond_to(@players_serializers)
    # render json: PlayerSerializer.new(@players, root: false)
    render json: @players ,each_serializer: PlayerSerializer
  end

  def create

    @players =Player.new(element_to_player)
    if @players.save
      # render json: PlayerSerializer.new(@players, meta: {       
      #     message: 'Address Created Successfully',
      #   }).serializable_hash, status: :created
      # render json: PlayerSerializer.new(@players).serializable_hash
        # render json: @players ,status:200
        # render json: @players ,each_serializer: PlayerSerializer

      render json: { data: PlayerSerializer.new(@players).serializable_hash, meta: {message: "players created"} ,status: :ok } 
    else 
      render json: {
        errors: "not save this attribute"
      }
    end
  end

  def update_player
    @players = Player.find_by(id: params[:id])
    if @players.present?
      @players.update(element_to_player)
      render json: "players information update succesfully"
    else
      render json:{
        errors: "not update players information"
      }
    end
  end

  def show_player
    @players = Player.find_by(id: params[:id])
    if @players.present?
      # render json: @players ,status:200
      render json: @players, serializer: PlayerSerializer, root: false
    else
      render json: {
        errors: "player is not present in the data"
      }
    end
  end

  def destroy_player
    @players = Player.find_by(id: params[:id])
    if @players.present?
      @players.destroy
      render json: {
        massage: "players deleted sucuessfully"
      }
    else
      render json: {
        errors: "players not present "
      }
    end

  end

  private
  def element_to_player
    params.require(:players).permit([
      :name, 
      :email,
      :password,                                              
      :age,                                                     
      :player_total_match,                                      
      :address,                                                
      :average,                                                
      :player_type,                                       
      :player_requier_rate,
      :player_best_performance,
      :player_profile_pic,
      :player_dob
    ])
  end
end
