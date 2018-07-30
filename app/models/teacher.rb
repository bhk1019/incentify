class Teacher < User
  has_many :courses
  has_many :students, through: :courses
end
