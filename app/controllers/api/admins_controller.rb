class Api::AdminsController < Api::ApiController
	skip_before_filter  :verify_authenticity_token

	def create
		if Admin.exists?(:name => params[:name])
			a = Admin.find_by_name(params[:name])
			if a.level < 2
				Admin.create(name: params[:newName], level: params[:level], active: 1)
			else
				render text: 'CantCreate'
			end
		else
			render text: 'YouAreNotAnAdmin'
		end
	end

	def lastLocations
		if Admin.exists?(:name => params[:name])
			a = Admin.find_by_name(params[:name])
			if a.level < 2 
				@victims = Victim.all
			end
		end
	end

	def showHistory
		if Admin.exists?(:name => params[:name])
			a = Admin.find_by_name(params[:name])
			if a.level < 2
				if Victim.exists?(:name => params[:vname])
					v = Victim.find_by_name(params[:vname])
					@locHistory = v.locations
					respond_with @locHistory
				end
			end
		end
	end
end