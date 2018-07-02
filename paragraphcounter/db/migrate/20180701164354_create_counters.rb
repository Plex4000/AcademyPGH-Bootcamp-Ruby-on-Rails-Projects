class CreateCounters < ActiveRecord::Migration[5.1]
  def change
    create_table :counters do |t|
      t.text :paragraph
      t.integer :charcount
      t.integer :wordcount

      t.timestamps
    end
  end
end
