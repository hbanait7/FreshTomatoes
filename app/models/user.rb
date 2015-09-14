class User < ActiveRecord::Base

  validates :name, :email, presence: true

  validates :password, presence: true, length: { minimum: 6 }

  has_many :created_movies, foreign_key: 'creator_id', class_name: 'Movie'

  has_many :reviewed_movies, foreign_key: 'reviewer_id', through => 'Review'

end
