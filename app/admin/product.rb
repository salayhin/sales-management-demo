ActiveAdmin.register Product do
  menu priority: 1
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :image, :in_stock
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
    column :name
    column :description
    column "Image" do |product|
      image_tag product.image_url(:general)
    end
    column :in_stock
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row "Image" do |product|
        image_tag product.image_url(:large)
      end
      row :in_stock
      row :created_at
    end
  end

  form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Product" do
      f.input :name
      f.input :description
      f.input :image, as: :file, :hint => image_tag(f.object.image.url(:general))
      f.input :in_stock
    end
    f.actions
  end

end
