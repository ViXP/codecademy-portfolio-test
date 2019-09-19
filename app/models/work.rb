class Work < ApplicationRecord
  validates :name, :url, presence: true, uniqueness: true
  validates :description, length: {maximum: 200}
  validates :url, :image_url, format: {with: /\Ahttp(s|):\/\//, message: 'must be started with http:// or https://'}
end
