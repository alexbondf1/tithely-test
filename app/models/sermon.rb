class Sermon < ApplicationRecord
  has_one_attached :image
  belongs_to :series
  validates :title, presence: true
  before_save :capitalize
  
  def capitalize
    self.title.capitalize!
  end
end
