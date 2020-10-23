class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :text
      t.integer :username_id
      t.integer :message_board_id

      t.timestamps
    end
  end
end
