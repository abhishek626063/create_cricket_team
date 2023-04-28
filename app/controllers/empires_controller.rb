class EmpiresController < ApplicationController
	def index
		@empires = Empire.all
		render json: @empires, each_serializer: EmpireSerializer
	end

	def show
		@empire = Empire.find_by(id: params[:id])
		if @empire.present?
			render json: @empire , serializer: EmpireSerializer
		else
			render json: {
				errors: "this empire data not found"
			}
	end

	def create
		@empire = Empire.new(empire_params_attribut)
		if @empire.save
			render json: { data: EmpireSerializer.new(@empire).serializable_hash, meta: {message: "empire created"} ,status: :ok } 
    else
    	render json: {
    		errors: "sorry you missing data"
    	}
    end	
	end

	def update
		@empire =	Empire.find_by(id: params[:id])
		if @empire.present?
			@empire.update(empire_params_attribut)
			render json: {
				massage: "empire information updated sucessfully"
			}
		else
			render json:
			{
				errors: "empire not present"
			}
		end
	end

	def destroy
		@empire = Empire.find_by(id: params[:id])
		if @empire.present?
			@empire.destroy
			render json: {
				massage: "this empire deleted succesfully"
			}
		else
			render json: {
				errors: "empire not present"
			}
		end
	end
		
	end

	private

	def empire_params_attribut
		params.require(:empires).permit([
			:empire_name,                               
		  :age,                                                   
		  :empire_experience,                                     
		  :address,                                               
		  :phone_number,                                          
		  :one_match_empiring_rate,                               
		  :two_match_empiring_rate,                               
		  :complet_seriase_empiring_rate,                         
		  :email,                                                 
		  :star,                                                  
		  :picture,                                               
		  :match_empiring
		])
	end

end
 