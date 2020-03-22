Actor.destroy_all
Character.destroy_all
Show.destroy_all
Network.destroy_all


jim = Actor.create(:first_name => "Jim", :last_name => "Carey")
peter = Actor.create(:first_name => "Peter", :last_name => "Dinklage")
will = Actor.create(:first_name => "Will", :last_name => "Sasso")
nathan = Actor.create(:first_name => "Nathan", :last_name => "Fillion")

rookie = Show.create(:name => "The Rookie")
firefly = Show.create(:name => "Firefly")
castle = Show.create(:name => "Castle")
doctor_horrible = Show.create(:name => "Doctor Horrible's Sing-Along Blog")


ace = Character.create(:name => "Ace Venture")
mal = Character.create(:name => "Macolm Reynolds")
nolan = Character.create(:name => "John Nolan")
rick = Character.create(:name => "Richard Castle")

abc = Network.create(:call_letters => "ABC", :channel => 10)
fox = Network.create(:call_letters => "FOX", :channel => 7)
amc = Network.create(:call_letters => "AMC", :channel => 41)



jim.characters << ace
nathan.characters << mal
nathan.characters << nolan
nathan.characters << rick

firefly.characters << mal
rookie.characters << nolan
castle.characters << rick


#more firefly actors
jewel = Actor.create(:first_name => "Jewel", :last_name => "Staite")
alan = Actor.create(:first_name => "Alan", :last_name => "Tudyk")
nina = Actor.create(:first_name => "Nina", :last_name => "Torres")

#more firefly characters
kaylee = Character.create(:name => "Kaylee Frye")
wash = Character.create(:name => "Hoban Washburne")
zoe = Character.create(:name => "Zoe Washburne")

jewel.characters << kaylee
alan.characters << wash
nina.characters << zoe

firefly.characters << kaylee
firefly.characters << wash
firefly.characters << zoe

