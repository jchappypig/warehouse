ActiveAdmin.register Order do
  permit_params :product_id, :price, :buyer, :address, :amount, :phone, :status, :note


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  form do |f|
    f.inputs 'Details' do
      f.input :product
      f.input :price
      f.input :buyer
      f.input :address
      f.input :amount
      f.input :phone
      f.input :status, type: :select, collection: Order::STATUSES
      f.input :note
    end

    f.actions
  end

end
