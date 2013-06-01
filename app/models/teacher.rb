class Teacher < ActiveRecord::Base
  validates :name, :email, uniqueness: true
  has_many :students, through: :
end
