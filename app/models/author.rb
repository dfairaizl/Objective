class Author
  
  include Mongoid::Document
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable

  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""
  
  #Fields
  field :first_name, type: String
  field :last_name, type: String

  #Validation
  validates_presence_of :first_name, message: "Please enter your first name"
  validates_presence_of :last_name, message: "Please enter your last name"
  
  validates_presence_of :email, message: "Please enter a valid email"
  
  validates_presence_of :password, message: "Please enter a password"
  validates_presence_of :password_confirmation, message: "Please confirm your password"
  validates_confirmation_of :password, message: "Passwords must match"
  
  validates_presence_of :encrypted_password

  #Associations  
  belongs_to :blog
  
  #Accessors
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  
  #Callbacks
  after_create :associate_author
  
  private
  
  def associate_author
  
  	blog = Blog.first
  	blog.author = self
  	
  	blog.save!
  	
  end
  
end
