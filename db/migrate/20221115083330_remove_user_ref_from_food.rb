class RemoveUserRefFromFood < ActiveRecord::Migration[7.0]
  def change
    remove_reference :foods, :user, index:true, foreign_key: true
  end
end
