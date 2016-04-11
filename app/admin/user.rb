ActiveAdmin.register User do
  menu priority: 1
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :password, :first_name, :last_name, :present_address, :permanent_address, :mobile, :designation, :join_date

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
    column :email
    column :first_name
    column :last_name
    column :present_address
    column :mobile
    column :designation
    column :join_date
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :mobile
  filter :designation
  filter :designation

  form do |f|
    f.inputs "Sales Person" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :present_address
      f.input :permanent_address
      f.input :mobile
      f.input :designation
      f.input :join_date,  as: :datepicker
    end
    f.actions
  end

end
