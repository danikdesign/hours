class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.float :rate
      t.float :bonus_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
