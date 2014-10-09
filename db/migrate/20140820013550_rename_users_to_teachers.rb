class RenameUsersToTeachers < ActiveRecord::Migration
  def change
    rename_table :users, :teachers
  end
end
