def populate_categories(categories)
  categories.each do |category|
    Category.create(name: category)
  end
end

categories = ['Film', 'Literature', 'Business', 'Love', 'War']
populate_categories(categories)
film = Category.find_by(name: 'Film')
literature = Category.find_by(name: 'Literature')
business = Category.find_by(name: 'Business')

q = Quote.create!(content: "The social object of skilled investment should be to defeat the dark forces of time and ignorance which envelope our future.",
             date: Time.utc(1935),
             attribution: "John Maynard Keynes",
             medium: Literature.new(title: 'The General Theory of Employment, Interest and Money')
                 )
q.categories << literature
q.categories << business

q = Quote.create!(content: "The consistent anarchist, then, should be a socialist, but a socialist of a particular sort. He will not only oppose alienated and specialized labor and look forward to the appropriation of capital by the whole body of workers, but he will also insist that this appropriation be direct, not exercised by some elite force acting in the name of the proletariat.",
              date: Time.utc(1970),
              attribution: "Noam Chomsky",
              medium: Literature.new(title: "Notes on Anarchism")
                )
q.categories << literature
q.categories << business

q = Quote.create!(content: "The idea that to make a man work you've got to hold gold in front of his eyes is a growth, not an axiom. We've done that for so long that we've forgotten there's any other way.",
              date: Time.utc(1920),
              attribution: "F. Scott Fitzgerald",
              medium: Literature.new(title: "This Side of Paradise")
             )
q.categories << literature
q.categories << business

q = Quote.create!(content: "Our fruitless labours mourn, And only rich in barren fame return.",
              date: Time.utc(1725), 
              attribution: "Homer",
              medium: Literature.new(title: "Odessey")
             )
q.categories << literature
q.categories << business

q = Quote.create!(content: "The inherent vice of capitalism is the unequal sharing of blessings. The inherent virtue of Socialism is the equal sharing of miseries.",
              date: Time.utc(1945, 10, 22),
              attribution: "Winston Churchill"
             )
q.categories << business

q = Quote.create!(content: "The economic anarchy of capitalist society as it exists today is, in my opinion, the real source of the evil. We see before us a huge community of producers the members of which are unceasingly striving to deprive each other of the fruits of their collective labour... I am convinced there is only one way to eliminate these grave evils, namely through the establishment of a socialist economy, accompanied by an educational system which would be oriented toward social goals.",
              date: Time.utc(1949),
              attribution: "Albert Einstein",
              medium: Literature.new(title: "Why Socialism?")
             )
q.categories << literature
q.categories << business

q = Quote.create!(content: "Frankly, my dear, I don't give a damn.",
              date: Time.utc(1939),
              attribution: "Rhett Butler",
              medium: Film.new(title: "Gone with the Wind")
             )
q.categories << film

q = Quote.create!(content: "I'm gonna make him an offer he can't refuse.",
              date: Time.utc(1972), 
              attribution: "Vito Corleone",
              medium: Film.new(title: "The Godfather")
             )
q.categories << film

q = Quote.create!(content: "You don't understand! I coulda had class. I coulda been a contender. I could've been somebody, instead of a bum, which is what I am.",
              date: Time.utc(1954), 
              attribution: "Terry Malloy",
              medium: Film.new(title: "On the Waterfront")
             )
q.categories << film

q = Quote.create!(content: "Toto, I've a feeling we're not in Kansas anymore.",
              date: Time.utc(1939),
              attribution: "Judy Garland",
              medium: Film.new(title: "The Wizard of Oz")
             )
q.categories << film

q = Quote.create!(content: "Here's looking at you, kid.",
              date: Time.utc(1949),
              attribution: "Rick Blaine",
              medium: Film.new(title: "Casablanca")
             )
q.categories << film

q = Quote.create!(content: "Go ahead, make my day.",
              date: Time.utc(1983),
              attribution: "Harry Callahan",
              medium: Film.new(title: "Sudden Impact")
             )
q.categories << film

q = Quote.create!(content: "May the Force be with you.",
              date: Time.utc(1977),
              attribution: "Han Solo",
              medium: Film.new(title: "Star Wars")
             )
q.categories << film

Quote.create!(content: "You talkin' to me?",
              date: Time.utc(1976),
              attribution: "Travis Bickle",
              medium: Film.new(title: "Taxi Driver")
             )
q.categories << film

q = Quote.create!(content: "A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti.",
              date: Time.utc(1991),
              attribution: "Hannibal Lecter",
              medium: Film.new(title: "The Silence of the Lambs")
             )
q.categories << film

q = Quote.create!(content: "Show me the money!",
              date: Time.utc(1996),
              attribution: "Rod Tidwell",
              medium: Film.new(title: "Jerry Maguire")
             )
q.categories << film

q = Quote.create!(content: "I'll be back.",
              date: Time.utc(1984),
              attribution: "The Terminator",
              medium: Film.new(title: "The Terminator")
             )
q.categories << film

q = Quote.create!(content: "Mama always said life was like a box of chocolates. You never know what you're gonna get.",
              date: Time.utc(1994),
              attribution: "Forrest Gump",
              medium: Film.new(title: "Forrest Gump")
             )
q.categories << film
