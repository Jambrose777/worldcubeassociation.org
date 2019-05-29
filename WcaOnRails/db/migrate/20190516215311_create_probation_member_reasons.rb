class CreateProbationMemberReasons < ActiveRecord::Migration[5.2]
  def change
    create_table :probation_member_reasons do |t|
      t.integer :team_member_id, null: false
      t.date :start_date, null: false
      t.date :end_date, default: nil
      t.text :reason
      t.text :restriction
      t.text :end_terms
      t.text :progress

      t.timestamps null: false
    end
  end
end
