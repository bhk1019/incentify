class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :total_points
      t.integer :expended_points
      t.timestamps
    end
  end
end
