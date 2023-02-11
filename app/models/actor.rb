# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    a_id = self.id
    matching_rows = Character.where({ :actor_id => a_id })
    return matching_rows # could be many rows (on the many side)
  end


end
