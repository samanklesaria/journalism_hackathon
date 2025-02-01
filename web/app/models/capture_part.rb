# == Schema Information
#
# Table name: capture_parts
#
#  capture_id :integer
#  created_at :datetime         not null
#  embeddings :text
#  id         :integer          not null, primary key
#  text       :text
#  timestamp  :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_capture_parts_on_capture_id  (capture_id)
#

class CapturePart < ApplicationRecord
  belongs_to :capture
end
