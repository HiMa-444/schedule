class CreateSches < ActiveRecord::Migration[6.0]
  def change
    create_table :sches do |t|
      t.string :title
      t.integer :sday
      t.integer :eday
      t.integer :all
      t.string :memo

      t.timestamps
    end
  end
end
