class CoachsController < ApplicationController
	def index
		@coachs = Coach.all
		render json: @coachs, each_serializer: CoachSerializer
	end

	def show
		@coach = Coach.find_by(id: params[:id])
		if @coach.present?
			render json: @coach, each_serializer: CoachSerializer
		else
			render json: {
				errors: "this coachis not available"
			}
		end
	end

	def create
		@coach = Coach.new(coach_params)
		if @coach.save
			render json: { data: CoachSerializer.new(@coach).serializable_hash, meta: { message: "coach created"}}
		else
			render json: {
				errors: "this coa is not created please enter all field"
			}
		end
	end

	def update
		@coach = Coach.find_by(id: params[:id])
		if @coach.present?
			@coach.update(coach_params)
			render json: {
				massage: " this coach updated sucessfully"
			}
		else
			render json: {
				errors: "this coachis not updated"
			}
		end
	end

	def destroy
	  @coach = Coach.find_by(id: params[:id])
	  if @coach.present?
	  	@coach.destroy
	  	render json: {message: "this coach deleted"}
	  else
	  	render json: {errors: "this coach is not deleted"}
	  end
	end

	private
	def coach_params
     params.require(:coachs).permit([
     	:coach_name,
     	:type_of_coach,
     	:age,
     	:coaching_time_year,
     	:player_coach_rate,
     	:one_seriase_rate
     ])
	end
end
