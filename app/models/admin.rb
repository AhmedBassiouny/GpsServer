class Admin < ActiveRecord::Base

	def lastloc
		#locationArray = Array.new
		victims = Victim.all
		victims.each do |v|
			#locationArray << v.locations.last.latlng
			@locationArray = @locationArray.to_a.push v.locations.last.latlng
		end
		@locationArray
	end
end
