# == Schema Information
#
# Table name: capture_parts
#
#  created_at :datetime         not null
#  embeddings :text
#  id         :integer          not null, primary key
#  text       :text
#  timestamp  :string
#  updated_at :datetime         not null
#

class CapturePart < ApplicationRecord
end
