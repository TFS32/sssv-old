class User < ApplicationRecord
  has_many :citizen_requests, class_name: 'Request', foreign_key: 'citizen_id'
  has_many :tech_requests, class_name: 'Request', foreign_key: 'tech_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
