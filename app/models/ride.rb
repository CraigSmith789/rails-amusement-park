class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    # Ride has a method 'take_ride' that accounts for the user not having enough tickets
    # Ride has a method 'take_ride' that accounts for the user not being tall enough
    # Ride has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets
    # Ride has a method 'take_ride' that updates ticket number
    # Ride has a method 'take_ride' that updates the user's nausea
    # Ride has a method 'take_ride' that updates the user's happiness
    mesage = ""
    if (self.user.tickets >= self.attraction.tickets) && (self.user.height >= self.attraction.min_height)
      self.user.tickets -= self.attraction.tickets
      self.user.nausea += self.attraction.nausea_rating
      self.user.happiness += self.attraction.happiness_rating
      self.user.save
      message = "Thanks for riding the #{self.attraction.name}!"
    elsif !(self.user.tickets > self.attraction.tickets) && !(self.user.height > self.attraction.min_height)
      message = "Sorry. You do not have enough tickets to ride the #{self.attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif self.user.tickets > self.attraction.tickets && !(self.user.height > self.attraction.min_height)
      message = "Sorry. You are not tall enough to ride the #{self.attraction.name}."
    elsif !(self.user.tickets > self.attraction.tickets)
     message =  "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
    end
    message
  end


  
end
