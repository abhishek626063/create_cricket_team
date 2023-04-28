class LoginPlayersController < ApplicationController
    def login
      player = OpenStruct.new(jsonapi_deserialize(params))
      
        output = PlayerAdapter.new
        output.on(:account_not_found) do |player|
          render json: {
            errors: [{
              failed_login: 'Account not found, or not activated',
            }],
          }, status: :unprocessable_entity
        end

        output.on(:failed_login) do |player|
          render json: {
            errors: [{
              failed_login: 'Login Failed',
            }],
          }, status: :unauthorized
        end

        output.on(:successful_login) do |player, token, refresh_token|
          render json: {user: ActiveModel::PlayerSerializer.new(account).serializable_hash, meta: {
            token: token
          }}
        end

        output.login_account(account)
    end
end
