class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actor_list
    self.actors.map do |a|
        a.full_name
    end
  end
end