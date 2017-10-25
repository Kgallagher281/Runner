class CreateDistances < ActiveRecord::Migration[5.1]
  def change
    create_table :distances do |t|
      t.integer :name

      t.timestamps
    end
  end
end
