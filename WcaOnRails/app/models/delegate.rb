# frozen_string_literal: true

class Delegate < ApplicationRecord
  belongs_to :user
  belongs_to :delegate_region

  has_many :competition_delegates, foreign_key: "delegate_id"
  has_many :delegated_competitions, through: :competition_delegates, source: "competition"

  scope :current, -> { where("end_date IS NULL OR end_date > ?", Date.today) }
  scope :candidate, -> { where(delegate_status: 'candidate') }
  scope :full, -> { where(delegate_status: 'full') }
  scope :regional, -> { where(delegate_status: 'regional') }
  scope :senior, -> { where(delegate_status: 'senior') }

  # attr_accessor :current_user

  def current_delegate?
    end_date.nil? || end_date > Date.today
  end

  validate :start_date_must_be_earlier_than_end_date
  def start_date_must_be_earlier_than_end_date
    if start_date && end_date && start_date >= end_date
      errors.add(:start_date, "must be earlier than end_date")
    end
  end

end
