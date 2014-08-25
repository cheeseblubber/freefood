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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
  end
end
