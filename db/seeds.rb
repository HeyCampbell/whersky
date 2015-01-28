
user = User.create(name: 'Jenny', email: 'jenny@example.com', password: 'jenny', password_confirmation: 'jenny', admin: true)

w_tag = Tag.create(name: 'whiskey')
fun_tag = Tag.create(name: 'fun')
blog = Blog.create(user: user, title: 'First Blog', content: Faker::Hacker.say_something_smart)
blog.tags << w_tag
blog.tags << fun_tag


3.times do
  user = User.create(name: Faker::Internet.name, email: Faker::Internet.email, password: 'jenny', password_confirmation: 'jenny', author: true)
  5.times do
    w_tag = Tag.create(name: Faker::App.name)
    fun_tag = Tag.create(name: Faker::Hacker.noun)
    blog = Blog.create(user: user, title: Faker::Hacker.say_something_smart, content: Faker::Lorem.paragraph)
    blog.tags << w_tag
    blog.tags << fun_tag
  end
end

10.times do
  event = Event.create(title: Faker::Hacker.say_something_smart,
    :description => Faker::Lorem.sentence,
    location: Faker::Address.street_address,
    date: Faker::Date.forward(23))
  event.tags << w_tag
  event.tags << fun_tag
end

