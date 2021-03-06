class Product < ActiveRecord::Base
  belongs_to :company

  validates :company, presence: true

  validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/ }
  validates :legacy_code, uniqueness: { scope: :company }

  validates :name, format: { with: /\A[a-zA-Z\s]+\z/ }
  validates :name, uniqueness: { scope: :company }
end
