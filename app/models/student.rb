require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, 
    format: { with: /.+@.+\...+/ },
    uniqueness: true
  validates :age, numericality: { greater_than: 5 }
  
  validate :phone_number

  def name
    first_name + ' ' + last_name
  end

  def age
    (Date.today - birthday).to_i / 365
  end

  private 

  def phone_number
    errors.add(:phone, "Should have ten or more digits mofo") unless phone.gsub(/\D/, '').size >= 10
  end
end
