class MakeTeamsController < ApplicationController
	
	def index
		@team = MakeTeam.all
		render json: @team, each_serializer: MakeTeamSerializer
	end

	def show
		@team = MakeTeam.find_by(id: params[:id])
		if @team.present?
			render json: @team, serializer: MakeTeamSerializer
		else
			render json: {
				errors: "this team is not present"
			}
		end
	end

	def create
    @team = MakeTeam.new(make_team_params)
    if @team.save
    	render json: { data: MakeTeamSerializer.new(@team).serializable_hash, meta: { message: "team is created"}, status: 200}
    else
    	render json: {
    		errors: "team is not created"
    	}
    end
	end

	def update
		@team = MakeTeam.find_by(id: params[:id])
		if @team.present?
			@team.update(make_team_params)
			render json: {
				massage: "this team update succesfully"
				}
		else
			render json:{
				errors: "not updated team"
			}
		end
	end

	def destroy
		@team = MakeTeam.find_by(id: params[:id])
		if @team.present?
			@team.destroy
			render json: {
				massage: "team deleted"
			}
		else
			render json:{
				errors: "this team are not deleted"
			}
		end
	end

	private
	def make_team_params
		params.require(:make_teams).permit([
			:team_name,
			:total_player_and_team_member
		])
  end
end
