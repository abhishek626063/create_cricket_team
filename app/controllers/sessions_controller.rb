class SessionsController < ApplicationController
  def create
    player = Player.find_by(email: params[:email])
    if player.present? 
      render json: { data: PlayerSerializer.new(player).serializable_hash, meta: {message: "players login successfully"} } 
      # render json: { token: player.auth_token }
    else
      render json: { errors: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end
end
