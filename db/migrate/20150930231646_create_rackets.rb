class CreateRackets < ActiveRecord::Migration
  def change
    create_table :rackets do |t|
      t.decimal :amount
      t.string :entity

      t.timestamps null: false
    end
  end
end
