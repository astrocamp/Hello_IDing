class AddRoleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :role, :string, default: 'user'
  end
end
