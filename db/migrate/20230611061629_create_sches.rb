class CreateSches < ActiveRecord::Migration[6.0]
  def change
    create_table :sches do |t|
      t.string :title
      t.date :sday
      t.date :eday
      t.integer :all
      t.string :memo

      t.timestamps
    end
  end
end
