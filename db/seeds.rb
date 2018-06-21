3.times do |topic|
	Topic.create!(
		title: "Topic #{topic+1}"
		)
end


10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog+1}",
		body: "Fake info",
		topic_id: Topic.last.id
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

8.times do |portfolio_item|
	PortfolioResource.create!(
		title: "Portfolio #{portfolio_item+1}",
		subtitle: "Ruby on Rails",
		body: "Description of my project",
		main_image: "http://via.placeholder.com/700x400",
		thumb_image:"http://via.placeholder.com/350x150"
		)
end

1.times do |portfolio_item|
	PortfolioResource.create!(
		title: "Portfolio #{portfolio_item+1}",
		subtitle: "Angular",
		body: "Description of my project",
		main_image: "http://via.placeholder.com/700x400",
		thumb_image:"http://via.placeholder.com/350x150"
		)
end

3.times do |technology|
	PortfolioResource.last.technologies.create!(
		name: "Technology #{technology+1}"
		)
end