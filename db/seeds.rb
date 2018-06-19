10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog+1}",
		body: "Fake info"
		)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title:"Rails #{skill+1}",
		percentage: 15
		)
end

puts "5 skills created"

9.times do |portfolio_item|
	PortfolioResource.create!(
		title: "Portfolio #{portfolio_item+1}",
		subtitle: "My project",
		body: "Description of my project",
		main_image: "http://via.placeholder.com/700x400",
		thumb_image:"http://via.placeholder.com/350x150"
		)
end