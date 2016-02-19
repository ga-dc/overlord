class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.string :course_name
      t.string :course_abbreviation
      t.string :core_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :producer

      t.timestamps null: false
    end
  end
end
