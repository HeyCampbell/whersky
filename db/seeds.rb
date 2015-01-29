
user = User.create(name: 'Jenny', email: 'jenny@example.com', password: 'jenny', password_confirmation: 'jenny', admin: true)

w_tag = Tag.find_or_create_by(name: 'whiskey')
fun_tag = Tag.find_or_create_by(name: 'fun')
blog = Blog.create(user: user, title: 'First Blog', content: Faker::Hacker.say_something_smart)
blog.tags << w_tag
blog.tags << fun_tag


3.times do
  user = User.create(name: Faker::Internet.name, email: Faker::Internet.email, password: 'jenny', password_confirmation: 'jenny', author: true)
  2.times do
    w_tag = Tag.find_or_create_by(name: Faker::App.name)
    fun_tag = Tag.find_or_create_by(name: Faker::Hacker.noun)
    blog = Blog.create(user: user, title: Faker::Hacker.say_something_smart, content: 'Today we celebrate the life, works and spirit of the great Scottish poet, Robert Burns (1759-1796). His best know work, “Auld Lang Snye” has become the New Year’s anthem for most english speaking  countries.

And there’s a hand, my trusty fiere!
And gie’s a hand o’ thine!
And we’ll tak’ a right guid-willie waught,
For auld lang syne. -Original Burns poem

And there’s a hand my trusty friend!
And give me a hand o’ thine!
And we’ll take a right good-will draught,
for days of long ago.- Translation

The Burns Suppers have been occurring in Scotland since the late 18th century and range from lofty formal gatherings to rowdy informal parties. The traditional format includes the eating of a traditional Scottish meal (including Haggis), the drinking of Scotch whisky, and the recitation of works by, about, and in the spirit of the Bard.

For all of our friends up north, I found a short song by Burns that may resonate with your frigid condition.

I Dream’d I lay

I DREAM’D I lay where flowers were springing
Gaily in the sunny beam;
List’ning to the wild birds singing,
By a falling crystal stream:
Straight the sky grew black and daring;
Thro’ the woods the whirlwinds rave;
Tress with aged arms were warring,
O’er the swelling drumlie wave.

Such was my life’s deceitful morning,
Such the pleasures I enjoyed:
But lang or noon, loud tempests storming
A’ my flowery bliss destroy’d.
Tho’ fickle fortune has deceiv’d me—
She promis’d fair, and perform’d but ill,
Of mony a joy and hope bereav’d me—
I bear a heart shall support me still.

Robert Burns

Tonight, dream of the “sunny beam” and “crystal stream” while you explore a new Scotch you’ve been considering, pull a dusty one from the back of your shelf, or try one our suggestions below. Find some haggis and celebrate like a true Scot! Cheers to you, Robert Burns.

', img_url: 'https://whersky.com/wp-content/uploads/2015/01/Robert-Burns-e1422124073508.jpeg')
    blog.tags << w_tag
    blog.tags << fun_tag
  end
end

12.times do
  event = Event.create(title: Faker::Hacker.say_something_smart,
    :description => Faker::Lorem.sentence,
    location: Faker::Address.street_address,
    date: Faker::Date.forward(23),
    price: 35,
    total_tickets: rand(20..30))
  w_tag = Tag.find_or_create_by(name: Faker::App.name)
    fun_tag = Tag.find_or_create_by(name: Faker::Hacker.noun)
  event.tags << w_tag
  event.tags << fun_tag
  event.print_tix
end

