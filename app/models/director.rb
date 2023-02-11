# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography # many side of the relationship (could be called "movies")
    dir_id = self.id
    matching_movies = Movie.where({ :director_id => dir_id }) # use id of director to query Director class
    return matching_movies
  end
end
