class CreateEnrolleds < ActiveRecord::Migration[5.1]
  def change
    create_table :enrolleds do |t|
      t.string :firstname
      t.string :lastname
      t.integer :pointsearned
      t.integer :pointsspent
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
    add_index :enrolleds, :course_id
  end
end
