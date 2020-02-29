class Movie < ApplicationRecord
  has_many :reservation
  has_many :movie_day
end
