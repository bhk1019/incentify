class AddDefaultValueToPointsearned < ActiveRecord::Migration[5.1]
  def up
    change_column :enrolleds, :pointsearned, :integer, default: 0
    change_column :enrolleds, :pointsspent, :integer, default: 0
  end

  def down
    change_column :enrolleds, :pointsearned, :integer, default: nil
    change_column :enrolleds, :pointsspent, :integer, default: nil
  end
end
