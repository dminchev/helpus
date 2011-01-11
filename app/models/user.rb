class User < ActiveRecord::Base
  validates_presence_of :accept_terms
  
  has_many :comments
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable, :confirmable,
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable
    
  attr_accessor :login
   # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :name, :login, :facebook_id, :accept_terms
  
  protected
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']    
    user = User.find_by_email(data["email"])
    unless user
      user = User.new(
        :email => data["email"],
        :name => data["name"],
        :password => Devise.friendly_token[0,20], 
        :facebook_id => data["id"],
        
        :accept_terms => true        
      ) # Create an user with a stub password.
      user.skip_confirmation!
      user.save!
    end
        
    user
  end

  # def self.find_for_database_authentication(conditions)
  #   value = conditions[authentication_keys.first]
  #   where(["username = :value OR email = :value", { :value => value }]).first
  # end
  # 
  # # Attempt to find a user by it's email. If a record is found, send new
  # # password instructions to it. If not user is found, returns a new user
  # # with an email not found error.
  # def self.send_reset_password_instructions(attributes={})
  #   recoverable = find_recoverable_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
  #   recoverable.send_reset_password_instructions if recoverable.persisted?
  #   recoverable
  # end 
  # 
  # def self.find_recoverable_or_initialize_with_errors(required_attributes, attributes, error=:invalid)
  #   case_insensitive_keys.each { |k| attributes[k].try(:downcase!) }
  # 
  #   attributes = attributes.slice(*required_attributes)
  #   attributes.delete_if { |key, value| value.blank? }
  # 
  #  if attributes.size == required_attributes.size
  #    if attributes.has_key?(:login)
  #     login = attributes.delete(:login)
  #     record = find_record(login)
  #   else  
  #     record = where(attributes).first
  #   end  
  # end  
  # 
  #  unless record
  #   record = new
  # 
  #    required_attributes.each do |key|
  #     value = attributes[key]
  #     record.send("#{key}=", value)
  #     record.errors.add(key, value.present? ? error : :blank)
  #   end  
  # end  
  # record
  # end
  # 
  # def self.find_record(login)
  #  where(attributes).where(["username = :value OR email = :value", { :value => login }]).first
  # end
end
