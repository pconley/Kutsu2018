class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :text
      t.string :signature
      t.string :status

      t.timestamps
    end
  end
end
