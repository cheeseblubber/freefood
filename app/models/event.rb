# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  longitude  :string(255)      not null
#  latitude   :string(255)      not null
#  address    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base

  validates :name, :longitude, :latitude, presence: true
  
  
  def events_near_me
  end 
end
