class AddLinkedinIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :linkedinId, :string
  end
end
