class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :category

  validates :title, :location, :category, :company_id, :description, presence: true
end
