class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.text :about
      t.text :sponsors
      t.integer :number

      t.timestamps null: false
    end
  end
end
