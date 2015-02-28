class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.integer :user_id, null: false
      t.integer :role_id, null: false
    end

    add_index :user_roles, [:user_id, :role_id], unique: true
    add_foreign_key :user_roles, :users
    add_foreign_key :user_roles, :roles
  end
end
