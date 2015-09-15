class Movie < ActiveRecord::Base

  validates :title, :release_date, :genre, :director, :actors, presence: true

  validates :description, length: { minimum: 50 }, presence: true

  has_many :reviews

  belongs_to :creator, class_name: 'User'

  mount_uploader :poster, PosterUploader

end
