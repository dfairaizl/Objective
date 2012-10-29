class Author
  
  include Mongoid::Document
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""

  #Validation
  validates_presence_of :email, message: "Please enter a password"
  validates_presence_of :encrypted_password

  #Associations  
  belongs_to :blog
  
  #Accessors
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
end
