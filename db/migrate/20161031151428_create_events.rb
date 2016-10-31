class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :code
      t.string :location
      t.float :time
      t.float :cost
      t.date :date

      t.timestamps
    end
  end
end
