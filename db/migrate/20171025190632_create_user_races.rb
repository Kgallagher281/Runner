class CreateUserRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :user_races do |t|

    	t.references :user, foreign_key: {to_table: :users}, index: true
    	t.references :race, foreign_key: {to_table: :races}, index: true

      t.timestamps
    end
  end
end
