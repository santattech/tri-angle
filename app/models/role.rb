class Role < ActiveRecord::Base
  def self.admin
    self.find_or_create_by_name("Admin")
  end
end
