o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
string = (0...50).map { o[rand(o.length)] }.join
for i in 1..2000
  break
  user = User.new
  user.name = 'NAME' + i.to_s
  user.nickname = "NICKNAME" + i.to_s
  user.save!
end
User.all.each do |user|
   for i in 1..10  
	 #user.blogs.create(text:  (0...300).map { o[rand(o.length)] }.join, real: true, category: 'admin')
   end
end
users = User.all
Blog.all.each do |blog|
   for i in 1..5	
      blog.comments.create(text: (0...50).map { o[rand(o.length)] }.join, user: users.sample)
   end
end
