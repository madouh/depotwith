module ApplicationHelper
	protected
	def has_profile?
		if user_signed_in? then
		@current_agent=Agent.find_by_email(current_user.email)
        Agent.find_by_email(current_user.email).present?
           
      end
	end
	def set_image
        if user_signed_in? then
        	
        @imag=Agent.find_by_email(current_user.email)
        if !@imag.nil? 
       @imag.image if @imag.image.present? 
       else ""
   		end
  			 
      end
    end
	def is_admin?
		current_user.admin? if current_user.present?
	end
	def admin_email
		User.find_by_admin(true)
	end
end
