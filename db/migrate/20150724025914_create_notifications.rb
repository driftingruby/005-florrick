class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :sender_email
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
