class Api::PassengersController < Api::ApiController
	skip_before_filter  :verify_authenticity_token

	def create
		if Victims.exists?(:name => params[:name])
			render text: Victims.find_by_name(params[:name]).id.to_s
		else
			v = Victims.create(name: params[:name])

			render text: 'done'
		end
	end

	def update
		if Victims.exists?(:id => params[:id])
			v = find(params[:id]).id
			l = Location.create(victim_id: v.id, latlng: params[:latlng])
	end
end