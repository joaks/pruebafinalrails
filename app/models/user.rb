class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:student, :professor]
  

  def default_values
  	self.role||=0
  	self.photo.url = 'public/photos/candice2.jpg'
  end	

end
