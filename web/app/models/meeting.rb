# == Schema Information
#
# Table name: meetings
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  starts_at  :datetime
#  summary    :text
#  title      :string
#  updated_at :datetime         not null
#

class Meeting < ApplicationRecord
end
