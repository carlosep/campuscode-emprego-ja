class Job < ActiveRecord::Base
  DAYS_TO_BE_RECENT = 5.days
  belongs_to :company
  belongs_to :category
  belongs_to :contract

  validates :title, :location, :category, :company_id, :description,
            presence: true

  def recent?
    created_at > 5.days.ago
  end

  def expired?
    created_at < 90.days.ago
  end
end
