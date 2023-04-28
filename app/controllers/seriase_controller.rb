class SeriaseController < ApplicationController
  def all_seriase
    @seriase = Seriase.all
    render json: @seriase ,each_serializer: SeriaseSerializer 
  end

  def find_seriase
    @seriase = Seriase.find_by(id: params[:id])
    if @seriase.present?
      render json: @seriase ,serializer: SeriaseSerializer
    else
      render json:{
        errors: "this seriase not find"
      } 
    end
  end

  def create_seriase
    @seriase = Seriase.new(seriase_param)
    if @seriase.save
      render json: { data: SeriaseSerializer.new(@seriase).serializable_hash, meta: {message: "seriase created"} ,status: :ok }
    else
      render json: {
        errors: " seriase not created please try again"
      }
    end
  end

  def update_seriase
    @seriase = Seriase.find_by(id: params[:id])
    if @seriase.present?
      @seriase.update(seriase_param)
      render json: {
        massage: "seriase update successfully"
      }
    else
      render json: {
        massage: "seriase not present"
      }
    end

  end

  def seriase_destroy
    @seriase = Seriase.find_by(id: params[:id])
    if @seriase.present?
      @seriase.destroy
      render json: {
        massage: "seriase deleted successfully"
      }
    else
      render json: {
        massage: "this seriase not present"
      }
    end
  end

  private
  def seriase_param
    params.require(:seriase).permit([
      :seriase_name,
      :seriase_onner,
      :start_seriase_date,
      :end_seriase_date,
      :first_price,
      :second_price,
      :seriase_level,
      :seriase_onner_number,
      :picture,
      :match_timing,
      :ground_location,
      :entry_frees,
      :seriase_type    
    ])
  end

end
