class Series < ApplicationRecord
  has_one_attached :image
  has_many :sermons
  validates :title, presence: true
  before_save :capitalize
  
  def capitalize
    self.title.capitalize!
  end
end
