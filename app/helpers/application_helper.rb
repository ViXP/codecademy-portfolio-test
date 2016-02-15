module ApplicationHelper
	def include_svg filename, options={}
    	doc = Nokogiri::HTML::DocumentFragment.parse File.read(Rails.root.join('app', 'assets', 'images', filename))
    	svg = doc.at_css 'svg'
    	options.each do |key, value|
      		svg[key] = value
      	end 
   		doc.to_html.html_safe
	end
end
