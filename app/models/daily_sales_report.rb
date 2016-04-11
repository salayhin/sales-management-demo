class DailySalesReport < ActiveRecord::Base
  belongs_to :user
  belongs_to :sales_point

  mount_uploader :invoice, InvoiceUploader
  mount_uploader :other_image, OtherImageUploader
end
