class Api::VictimsController < Api::ApiController
	skip_before_filter  :verify_authenticity_token

	def create
		if Victim.exists?(:name => params[:name])
			render text: Victim.find_by_name(params[:name]).id.to_s
		else
			v = Victim.create(name: params[:name])
			render text: 'done'
		end
	end

	def update
		if Victim.exists?(:id => params[:id])
			v = find(params[:id]).id
			v.lastloc = params[:latlng]
			v.save
			l = Location.create(victim_id: v.id, latlng: params[:latlng])
		end
	end

	def show
		@victims = Victim.find_by_id(params[:id])
	end

	def index
		@victims = Victim.all
	end

end