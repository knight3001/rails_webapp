class Teacher < ActiveRecord::Base
    validates :username,  presence: true, length: { maximum: 20 }, uniqueness: true
    validates :password,  presence: true, confirmation: true, if: lambda{ new_record? || !password.nil? }
    validates :email_address, presence: true, uniqueness: true
end
