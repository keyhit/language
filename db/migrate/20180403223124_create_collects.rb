class CreateCollects < ActiveRecord::Migration[5.0]
  def change
    create_table :collects do |t|
      t.boolean :learned
      t.string :frequency
      t.string :translation_id

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
