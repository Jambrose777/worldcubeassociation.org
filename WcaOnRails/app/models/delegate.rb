# frozen_string_literal: true

class Delegate < ApplicationRecord
    belongs_to :delegate_region
    belongs_to :user
  
    scope :current, -> { where("end_date IS NULL OR end_date > ?", Date.today) }
end