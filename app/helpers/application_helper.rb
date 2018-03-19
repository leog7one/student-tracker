module ApplicationHelper

  def time_format(referral_date)
		referral_date.strftime("%A, %b %e %Y at %l:%M %p ")
  end
  
end
