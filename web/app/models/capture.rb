# == Schema Information
#
# Table name: captures
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  summary    :text
#  title      :string
#  updated_at :datetime         not null
#  url        :string
#

class Capture < ApplicationRecord
  has_many :capture_parts
end
