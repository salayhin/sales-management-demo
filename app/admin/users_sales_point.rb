ActiveAdmin.register UsersSalesPoint do
  menu priority: 5
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, :sales_point_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  filter :user_id
  filter :sales_point_id

  form do |f|
    f.inputs "User Sales Point" do
      f.input :user_id, as: :select, collection: User.all.map{ |u| [u.email, u.id] }
      f.input :sales_point_id, as: :select, collection: SalesPoint.all.map{ |s| [s.name, s.id] }
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :user_id
    column :sales_point_id
    column :created_at
    actions
  end

end
