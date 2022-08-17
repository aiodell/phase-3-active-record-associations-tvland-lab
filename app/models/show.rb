class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # map the full names of the characters associated with the show
  # use the existing full_name method from actor to save time and space
  def actors_list
    self.actors.map do |actor|
      actor.full_name
    end
  end



end