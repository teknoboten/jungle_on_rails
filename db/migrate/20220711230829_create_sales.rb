class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.integer :percent_off
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end
end


new_sale = Sale.new(name: "weekend sale", percent_off: 50, starts_on: Date.new(2022, 9, 12), ends_on: Date.new(2022, 9, 15))
