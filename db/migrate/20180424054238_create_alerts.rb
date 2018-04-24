class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|
      t.string :alert_type
      t.string :emergency_type
      t.string :affected_areas
      t.string :alert_message
      t.string :user
      t.string :status

      t.timestamps
    end
  end
end
