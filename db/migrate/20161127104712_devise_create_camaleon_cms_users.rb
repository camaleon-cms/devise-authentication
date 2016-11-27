class DeviseCreateCamaleonCmsUsers < ActiveRecord::Migration
  def change
    change_table CamaleonCms::User.table_name do |t|
      # t.database_authenticatable
      t.string :encrypted_password, :null => false, :default => '', :limit => 128
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      t.token_authenticatable
    end
  end
end
