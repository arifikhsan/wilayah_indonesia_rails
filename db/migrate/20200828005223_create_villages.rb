class CreateVillages < ActiveRecord::Migration[6.0]
  def change
    create_table :villages do |t|
      t.references :district, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
