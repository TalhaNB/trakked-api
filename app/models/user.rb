class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
        :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :cases, foreign_key: "solicitor_id"
  has_many :requests, class_name: "Case", foreign_key: "client_id"

  has_many :clients, through: :cases

  enum :role, %w[solicitor client]
end
