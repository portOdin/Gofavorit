class AddAddressToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :address, :string
  end
end
