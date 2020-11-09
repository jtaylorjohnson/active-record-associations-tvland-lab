class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
    
  def actors_list
        self.characters.map {|a| a.actor.full_name}
    end

end