class AddisAdminToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :isAdmin, :boolean
  end
end
