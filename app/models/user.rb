class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  def mood
    if !admin
    # User has a method 'mood' that returns 'sad' when the user is more nauseous than happy
      if nausea > happiness
        "sad"
      else
    # User has a method 'mood' that returns 'happy' when the user is more happy than nauseous
     
        "happy"
      end
    end
  end
end
