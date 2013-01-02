def full_title_temp(page_title)
	base = "Faux Twitter"
	if page_title.empty?
		base
	else
		"#{base} | #{page_title}"
	end
end