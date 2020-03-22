class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
        #need to build characters and shows in order to run this method
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