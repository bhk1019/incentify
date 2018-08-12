class AddIndexToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :course_id, :string
    add_index :students, :course_id
  end
end
