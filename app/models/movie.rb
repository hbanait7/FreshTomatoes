 class Movie < ActiveRecord::Base

  validates :title, :release_date, :genre, :director, :actors, presence: true

  validates :description, length: { minimum: 50 }, presence: true

  has_many :reviews

  belongs_to :creator, class_name: 'User'

  mount_uploader :poster, PosterUploader

  scope :now_playing, -> { where("release_date between ? and ?", Date.today - 1.month, Date.today) }

  scope :coming_soon, -> { where("release_date between ? and ?", Date.today + 1.day, Date.today + 1.month) }

  def now_playing
    release_date.between?(Date.today - 1.month, Date.today)
  end

end

