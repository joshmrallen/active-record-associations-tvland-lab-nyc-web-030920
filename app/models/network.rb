class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
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