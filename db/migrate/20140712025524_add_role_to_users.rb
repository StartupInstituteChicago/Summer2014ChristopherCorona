class AddRoleToUsers < ActiveRecord::Migration
  def change
    add column :users, :role, :string
  end
end
