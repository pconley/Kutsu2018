class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :agent, foreign_key: true
      t.string :status
      t.string :notes
      t.string :left_size
      t.string :left_width
      t.string :right_size
      t.string :right_width
      t.string :style
      t.string :description

      t.timestamps
    end
  end
end
