class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates_presence_of :first_name,:last_name       

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/       

  has_many :user_countries
  has_many :countries, through: :user_countries    
  has_one :profile, dependent: :destroy 
  after_create :create_profile  
  has_many :user_education_details, dependent: :destroy 
  accepts_nested_attributes_for :user_education_details
  has_many :user_connections
  has_many :conversations, :foreign_key => :sender_id
  
end
