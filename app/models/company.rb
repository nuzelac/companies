class Company < ApplicationRecord
  extend FriendlyId

  friendly_id :name, use: :slugged

  validates :name, presence: true, length: { maximum: 50 }
  validates :comment, presence: true, length: { minimum: 10, maximum: 10_000 }

  scope :not_deleted, -> { where(deleted: nil) }
  scope :deleted, -> { where.not(deleted: nil) }
end
