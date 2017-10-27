class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name
      t.text :details
      t.datetime :date
      t.string :address
      t.string :distance

      t.timestamps
    end
  end
end
