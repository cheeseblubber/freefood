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

require 'rails_helper'

RSpec.describe Event, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
