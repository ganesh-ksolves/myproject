class CreateFrnds < ActiveRecord::Migration[7.0]
  def change
    create_table :frnds do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_no
      t.string :city

      t.timestamps
    end
  end
end
