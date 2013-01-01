module ApplicationHelper
	#if no title is provided, return base otherwise return 
	#base+title
	def full_title(page_title)
		base = "Faux Twitter"
		if page_title.empty?
			base
		else
			"#{base} | #{page_title}"
		end
	end
end
