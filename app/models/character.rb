class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

end


#major issue with this class because with belongs_to you
#must put singular name ... I think ... yeah, that makes sense
#so instead of belongs_to :actors, it should be belongs_to :actor


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


