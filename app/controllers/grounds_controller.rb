class GroundsController < ApplicationController
  def index
    @grounds = Ground.all
    render json: @grounds, each_serializer: GroundSerializer
  end

  def show
    @ground = Ground.find_by(id: params[:id])
    if @ground.present?
      render json: @ground , serializer: GroundSerializer
    else
      render json: {
        error: "this ground not available"
      }
    end
  end

  def create
    @ground = Ground.new(ground_params)
    if @ground.save
      render json: { data: GroundSerializer.new(@ground).serializable_hash, meta: {message: "empire created"} ,status: :ok } 
    else
      render json: {
        error: "sorry, you are missing attribute"
      }
    end
  end

  def update
    @ground = Ground.find_by(id: params[:id])
    if @ground.present?
      @ground.update(ground_params)
      render json: {
        massage: "ground information update succesfully"
      }
    else
      render json: {
        errors: "this ground not present"
      }
    end

  end

  def destroy
    @ground = Ground.find_by(id: params[:id])
    if @ground.present?
      @ground.destroy
      render json: {
        massage: "this ground deleted succesfully"
      }
    else
      render json: {
        error: "this ground not presented"
      }
    end
  end


  private
  def ground_params
    params.require(:grounds).permit([
      :name,                                    
      :grount_create_date,                      
      :ground_address,                               
      :ground_boundry_size,                                 
      :one_match_rate,                                      
      :two_match_rate,                                      
      :all_seriase_rate,                                    
      :ground_onner_number, 
      :seriase_id 
    ])
  end
end
