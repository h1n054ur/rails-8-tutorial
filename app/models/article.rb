class Article < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :content, presence: true, length: { minimum: 10, maximum: 5000 }
  
  scope :published, -> { where(published: true) }
  scope :draft, -> { where(published: false) }
  scope :recent, -> { order(created_at: :desc) }
  scope :published_recent, -> { published.recent }
  
  def publish!
    update!(published: true, published_at: Time.current)
  end
  
  def unpublish!
    update!(published: false, published_at: nil)
  end
  
  def draft?
    !published?
  end
end
