class UsersSalesPoint < ActiveRecord::Base
  belongs_to :user
  belongs_to :sales_point
end
