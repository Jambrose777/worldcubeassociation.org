class AddGenderRanking < ActiveRecord::Migration[5.2]
  def change
    add_column :RanksAverage, :genderRank, :integer, null: false, default: 0
    add_column :RanksSingle, :genderRank, :integer, null: false, default: 0
    add_column :ConciseSingleResults, :gender, :string, null: true, default: nil
    add_column :ConciseAverageResults, :gender, :string, null: true, default: nil
  end
end
