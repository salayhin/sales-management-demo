class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_sales_points
  has_many :sales_points, through: :users_sales_points
  has_many :sales_targets
  has_many :daily_sales_reports
end
