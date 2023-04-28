class TeamOnnersController < ApplicationController
  def index
    @team_onners = TeamOnner.all
    # render json:  @team_onners, status: 200
    # render json: { data: TeamOnnerSerializer.new(@team_onners).serializable_hash, meta: {message: "players created"} ,status: :ok }
    render json: @team_onners ,each_serializer: TeamOnnerSerializer
  end

  def show
    team_onner = TeamOnner.find_by(id: params[:id])
    if team_onner.present?
      render json: team_onner ,serializer: TeamOnnerSerializer
    else
      render json: {
        errors: "this usser is not present"
      }
    end
  end

  def create
    @team_onner = TeamOnner.new(team_onner_param)
    if @team_onner.save
      render json: { data: TeamOnnerSerializer.new(@team_onner).serializable_hash, meta: {message: "team onner created"} ,status: :ok }
    else
      render json: {
        errors: " team onner not created please try again"
      }
    end
  end

  def update
    @team_onner = TeamOnner.find_by(id: params[:id])
    if @team_onner.present?
      @team_onner.update(team_onner_param)
      render json: {
        massage: "team onner update succesfully"
      }
    else
      render json: {
        errors: "this onner is not updated "
      }
    end
  end

  def destroy
    @team_onner = TeamOnner.find_by(id: params[:id])
    if @team_onner.present?
      @team_onner.destroy
      render json: {
        massage: " this team onner deleted succesfully"
      }
    else
      render json: {
        errors: "this team onner not found"
      }
    end
  end

  private
  def team_onner_param
    params.require(:team_onners).permit([
      :name,
      :onner_team_name,
      :email,
      :password,
      :age      
    ])
  end
end
