class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end


end










#summary of relations in this lab:
#actor
#-----has many characters
#-----has many shows, through characters

#character -------- characters join actors to shows, shows to actors
#-----belongs to actor
#-----belongs to show

#show
#-----has many characters
#-----has many actors, through characters