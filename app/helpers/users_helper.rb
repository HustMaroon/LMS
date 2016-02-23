module UsersHelper
	def gravatar_for(user)
		if user.avatar.nil?
			avatar = 'pf_pic2.jpg'
		else
			avatar = user.avatar
		end
		image_tag(avatar, alt: user.name, class: "gravatar")
	end
end
