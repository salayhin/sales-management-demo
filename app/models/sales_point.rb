class SalesPoint < ActiveRecord::Base
  belongs_to :location
  has_many :users
  has_many :sales_points, through: :users
  has_many :daily_sales_reports
end
