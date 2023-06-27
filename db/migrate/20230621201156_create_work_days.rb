class CreateWorkDays < ActiveRecord::Migration[7.0]
  def change
    create_table :work_days do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
