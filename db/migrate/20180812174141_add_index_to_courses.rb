class AddIndexToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :user_id, :string
    add_index :courses, :user_id
  end
end
