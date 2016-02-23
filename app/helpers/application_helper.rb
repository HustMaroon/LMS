module ApplicationHelper
	def full_title(base_title)
		if base_title == ''
			'WOW LMS'
		else base_title + '| WOW LMS'
		end
	end
end
