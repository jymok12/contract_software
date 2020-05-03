class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :customer
      t.string :date
      t.string :jobsite
      t.string :attn
      t.string :phone
      t.string :email
      

      t.timestamps
    end
  end
end
