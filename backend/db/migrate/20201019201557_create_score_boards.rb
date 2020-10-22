class CreateScoreBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :score_boards do |t|
      t.integer :score_id

      t.timestamps
    end
  end
end
