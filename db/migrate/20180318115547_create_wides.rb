class CreateWides < ActiveRecord::Migration[5.1]
  def change
    create_table :wides do |t|
      t.string :text

      t.timestamps
    end
  end
end
