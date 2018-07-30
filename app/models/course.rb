class Course < ApplicationRecord
  belongs_to :teacher
  belongs_to :student, optional: true
end
