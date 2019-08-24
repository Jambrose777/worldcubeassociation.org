# frozen_string_literal: true

class DelegateRegion < ApplicationRecord

  scope :active, -> { where(is_active: true) }

end
