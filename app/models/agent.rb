class Agent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  has_many :orders

  def to_s
  	"<Agent##{id} #{email}>"
  end

  def name
  	name, domain = email.split("@")
  	return name
  end
  
end

