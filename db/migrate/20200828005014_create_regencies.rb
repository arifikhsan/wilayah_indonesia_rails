class CreateRegencies < ActiveRecord::Migration[6.0]
  def change
    create_table :regencies do |t|
      t.references :province, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
