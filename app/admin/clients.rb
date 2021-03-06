ActiveAdmin.register Client do
  menu priority: 1, parent: "Users"
   permit_params :name, :lastname, :email, :address, :phone, :document_number, :birth_date

  index do
    selectable_column
    id_column
    column :name
    column :lastname
    column :email
    column :phone
    actions
  end

   form do |f|
     f.inputs 'Information' do
       f.input :name
       f.input :lastname
       f.input :email
       f.input :address
       f.input :phone
       f.input :document_number
       f.input :birth_date, as: :datepicker
     end
     f.actions
   end
  
end
