class CreateContact < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.text     "subject"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.text     "content"
      t.string   "email"
      t.boolean  "accepted"
    end
  end

  def down
    drop_table :contacts
  end
end
