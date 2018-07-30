class Student < User
  has_many :courses
  has_many :teachers, through: :courses
end
