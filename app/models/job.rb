class Job < ActiveRecord::Base
  belongs_to :company

  validates :title, :location, :category, :company_id, :description, presence: true
end
