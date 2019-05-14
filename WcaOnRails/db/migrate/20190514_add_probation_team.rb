# frozen_string_literal: true

class AddHiddenTeamForDelegatesOnProbation < ActiveRecord::Migration[5.1]
  def change
    Team.create(friendly_id: 'probation', rank: 100, hidden: true)
  end
end
