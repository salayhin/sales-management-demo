ActiveAdmin.register SalesTarget do
  menu priority: 4
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, :start_date, :end_date, :target, :is_active
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
    column :start_date
    column :end_date
    column :target
    column :is_active
    actions
  end

  form do |f|
    f.inputs "Sales Target" do
      f.input :user_id, as: :select, collection: User.all.map{ |u| [u.email, u.id] }
      f.input :start_date,   as: :datepicker
      f.input :end_date,   as: :datepicker
      f.input :target
      f.input :is_active
    end
    f.actions
  end

end
