class CreateAlarmDefs < ActiveRecord::Migration
  def self.up
    create_table :alarm_defs do |t|
      t.column :host, :string, :null => false
      t.column :plugin, :string, :null => false
      t.column :type, :string, :null => false
      t.column :data_source, :string, :null => false
      t.column :warning_range, :string, :null => false
      t.column :critical_range, :string, :null => false
      t.column :message_format, :string, :null => false
      t.column :action, :string, :null => false
      t.column :disabled, :boolean, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :alarm_defs
  end
end
