# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    m_id = self.movie_id
    matching_rows = Movie.where({ :id => m_id })
    return matching_rows.at(0) # return single record
  end

  def actor
    a_id = self.actor_id
    matching_rows = Actor.where({ :id => a_id })
    return matching_rows.at(0) # return single record
  end
end
