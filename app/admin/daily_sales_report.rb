ActiveAdmin.register DailySalesReport do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, :sales_point_id, :comments, :invoice, :other_image, :lat, :long, :sales_date
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :user_id
    column :user_id
    column :sales_date
    column :comments
    column "Invoice" do |daily_sales_report|
      image_tag daily_sales_report.invoice_url(:general)
    end
    column "Other Image" do |daily_sales_report|
      image_tag daily_sales_report.other_image_url(:general)
    end
    column :lat
    column :long
    actions
  end

  show do
    attributes_table do
      row :user_id
      row :user_id
      row :sales_date
      row :comments
      row "Invoice" do |daily_sales_report|
        image_tag daily_sales_report.invoice_url(:general)
      end
      row "Other Image" do |daily_sales_report|
        image_tag daily_sales_report.other_image_url(:general)
      end
      row :lat
      row :long
    end
  end

  form do |f|
    f.inputs "Daily Sales Report" do
      f.input :user_id, as: :select, collection: User.all.map{ |u| [u.email, u.id] }
      f.input :sales_point_id, as: :select, collection: SalesPoint.all.map{ |s| [s.name, s.id] }
      f.input :sales_date,  as: :datepicker
      f.input :comments
      f.input :invoice, as: :file, :hint => image_tag(f.object.invoice.url(:general))
      f.input :other_image, as: :file, :hint => image_tag(f.object.other_image.url(:general))
      f.input :lat
      f.input :long
    end
    f.actions
  end


end
