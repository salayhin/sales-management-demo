class Location < ActiveRecord::Base
  has_many :sales_points
end
