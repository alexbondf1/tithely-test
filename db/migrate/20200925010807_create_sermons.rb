class CreateSermons < ActiveRecord::Migration[6.0]
  def change
    create_table :sermons do |t|
      t.string :title
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
