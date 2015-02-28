class AddRolesToUserRolesTable < ActiveRecord::Migration
  def up
    Role.find_or_create_by_name("admin")
  end

  def down
    Role.find_by_name("admin").destroy
  end
end
