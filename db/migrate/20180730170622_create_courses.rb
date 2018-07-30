class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.belongs_to :teacher, index: true
      t.belongs_to :patient, index: true
      t.timestamps
    end
  end
end
