class CreateDealers < ActiveRecord::Migration[6.1]
  def change
    create_table :dealers do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :display_name
      t.string :email
      t.string :phone
      t.string :work_phone
      t.string :website
      t.text :billing_address
      t.text :shipping_address

      t.timestamps
    end
  end
end
