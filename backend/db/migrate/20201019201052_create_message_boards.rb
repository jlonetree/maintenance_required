class CreateMessageBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :message_boards do |t|
      t.integer :message_id

      t.timestamps
    end
  end
end
