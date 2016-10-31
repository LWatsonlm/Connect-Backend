class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo_url
      t.string :linkedin_url
      t.boolean :hiring
      t.boolean :looking
      t.string :skills
      t.string :desired_skills

      t.timestamps
    end
  end
end
