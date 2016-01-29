class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :category

  validates :title, :location, :category, :company_id, :description, presence: true

  def recent?
    if created_at > 5.days.ago
      true
    else
      false
    end
  end
end
