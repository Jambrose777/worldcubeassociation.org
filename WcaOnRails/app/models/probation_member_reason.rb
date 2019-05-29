# frozen_string_literal: true

class ProbationMemberReason < ApplicationRecord
    belongs_to :team_member
  
    validate :start_date_must_be_earlier_than_end_date
    def start_date_must_be_earlier_than_end_date
      if start_date && end_date && start_date >= end_date
        errors.add(:start_date, "must be earlier than end_date")
      end
    end

    validates :start_date, presence: true
  end
  