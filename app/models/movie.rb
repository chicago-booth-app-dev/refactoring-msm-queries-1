# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director # 1 side of the relationshihp
    d_id = self.director_id # self is the object you're calling the method on at the time
    matching_directors = Director.where({ :id => d_id })
    return matching_directors.at(0)
  end

  def characters
    a_id = self.id
    matching_rows = Characters.where({ :movie_id => a_id })
    return matching_rows # could be many rows (on the many side)
  end
end
