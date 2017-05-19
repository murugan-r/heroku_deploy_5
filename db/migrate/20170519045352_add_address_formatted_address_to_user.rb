class AddAddressFormattedAddressToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address_formatted_address, :string
  end
end
