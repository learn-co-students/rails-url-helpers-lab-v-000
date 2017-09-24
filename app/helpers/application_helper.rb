module ApplicationHelper
	def active_link_text(student)  
  		student.active? ? "This student is currently inactive." : "This student is currently active."  
	end
end
