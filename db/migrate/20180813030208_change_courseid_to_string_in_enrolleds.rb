class ChangeCourseidToStringInEnrolleds < ActiveRecord::Migration[5.1]
  def change
    change_column :enrolleds, :course_id, :string
  end
end
