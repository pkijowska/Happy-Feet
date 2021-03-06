User.destroy_all
puts "Creating users"

u1 = User.create :name => 'Paulina', :email => 'poli7sh@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :name => 'Paulina', :email => 'p.kijowska@gmail.com', :password => 'chicken1'
u3 = User.create :name => 'Natalia', :email => 'p.na@gmail.com', :password => 'chicken'

puts "Creating animals"
#
Animal.destroy_all
a1 = Animal.create :name => 'Daisy', :age => 4, :image => '/assets/daisy.jpeg', :story => "This little Diva loves cuddles and customer attention. Daisy loves to be the centre of attention, so why not make her the centre of yours?"
a2 = Animal.create :name => 'Bacon', :age => 2, :image => '/assets/bacon.jpeg',:story => "Bacon is a pet you always wish to have. He has a very cheeky personality and loves to hide his food just in case someone tries to steal it!"
a3 = Animal.create :name => 'Milo', :age => 1, :image => '/assets/milo.jpeg',:story => "He is a very chilled out piggy but loves having the attention on him and loves a belly rub."
a4 = Animal.create :name => 'Dexter', :age => 3, :image => '/assets/dexter.jpeg', :story => "Dexter is another shy soul on the farm and can be a little quiet in comparison to her piggy friends. He is a lovely pig with a big heart and is always the first one to welcome people when they attend the farm."
a5 = Animal.create :name => 'Jimbo', :age => 2, :image => '/assets/piggy.jpg', :story => "Jimbo loves eating carrots and he is loving. He even know some tricks! Will impress everyone at family parties."
a6 = Animal.create :name => 'Ralph', :age => 2, :image => '/assets/ralph.jpeg', :story => "He is a big and handsome hamster. He does not mind being hugged and kissed."
a7 = Animal.create :name => 'Hammie', :age => 3, :image => '/assets/hammie.jpeg', :story => "Very little hamster with a huge personality. Only give a little nip occasionally if he is startled or if fingers smell like food."
a8 = Animal.create :name => 'Santa Paws', :age => 1, :image => '/assets/pomsky.jpeg',:story => "Santa Paws has a special place in the heart of all who have met her.
She loves to lay totally chilled in your arms, and watch the world while being cuddled by her human."
a9 = Animal.create :name => 'Woofer', :age => 3, :image => '/assets/morkie.jpeg', :story => "Woofer is an old soul who make some special family complete. He will not push or quarrel with her siblings over food or toys and will wait patiently."
a10 = Animal.create :name => 'Pickles', :age => 7, :image => '/assets/pickle.jpg',:story => "Pickles is a sweet lady that is ready for a calm life of not having to worry about uncertainties."
a11 = Animal.create :name => 'Gary', :age => 6, :image => '/assets/westie.jpeg', :story => "Kids flown the nest? Looking for a lap warmer? Need someone to love and cherish all day? Live a quiet life? Look no further! Gary is here for you."
a12 = Animal.create :name => 'Toby', :age => 9, :image => '/assets/olddaschund.jpg',:story => "Toby may have short legs but he moves them quick to keep up at playtime with his fur friends."
a13 = Animal.create :name => 'Lui', :age => 3, :image => '/assets/little.jpg',:story =>"Lui who is still looking for his forever home. He is very talkative and likes to sleep on your feet which is excellent news for someone needing a foot warmer coming into winter!"
a14 = Animal.create :name => 'Fluffy', :age => 4, :image => '/assets/savannahcat.jpeg', :story => "Fluffy is a beautiful girl who had a rough start to life. She has since fully recovered and is living her best life with her foster siblings. She is a small girl but is not afraid to tell you when it is dinner time"
a15 = Animal.create :name => 'Vanessa', :age => 4, :image => '/assets/beauty.jpg',:story => "Vanessa has a bit of an attitude but also the biggest personality you can imagine."
a16 = Animal.create :name => 'Mela', :age => 2, :image => '/assets/rainbow.jpg',:story => "Do you simply need more rainbow in your life?"

#
#
#
#
#
#
#
#
#
#
#
# #add category id?
#
#
# how to add pics?
#
# # https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSnqy7Arm3nHipc_R7fOjTDt5MqwavFidLigF-IFr7dRB3mdaN      dog small
# # https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdVhy-H8fx-cXEIdpgtmuPygDtUB7uzZg5o1scih6wTMKiWLes-A     dog funny
# # https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxxxA3YZMRzstDbXHY4iPmqBFswbvZJnnQD3ijY3kXqBUez_Lx        dog funny
# # https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwXJvLi_DXs0wWHCwy4oj62kjTBmGxFTJCxtrGIEfm6pflLKgTzQ  tiny pig
# #
#
#
#
#
Category.destroy_all
puts "Creating categories"

c1 = Category.create :name => 'Pigs', :img => 'https://media.giphy.com/media/F4F9JPh0ZbVok/giphy.gif'
c2 = Category.create :name => 'Hamsters', :img => 'https://media.giphy.com/media/P4EO3u0apt3PO/giphy.gif'
c3 = Category.create :name => 'Dogs', :img => 'https://media.giphy.com/media/kiBcwEXegBTACmVOnE/giphy.gif'
c4 = Category.create :name => 'Cats', :img => 'https://media.giphy.com/media/B6odR0DhsStfW/giphy.gif'

Favourite.destroy_all
puts "Creating favourites"

f1 = Favourite.create :animal_id => a1.id, :user_id => u1.id
f2 = Favourite.create :animal_id => a2.id, :user_id => u1.id
f3 = Favourite.create :animal_id => a3.id, :user_id => u2.id
f4 = Favourite.create :animal_id => a4.id, :user_id => u2.id

#
#
#
puts "Associations"
# #category and animals
c1.animals << a1 << a2 << a3 << a4 << a5
c2.animals << a6 << a7
c3.animals << a8 << a9 << a10 << a11 << a12
c4.animals << a13 << a14 << a15 << a16


# #users and favourites
