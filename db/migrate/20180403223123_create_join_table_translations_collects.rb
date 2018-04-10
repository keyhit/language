class CreateJoinTableTranslationsCollects < ActiveRecord::Migration[5.0]
  def change
    create_join_table :translations, :collects do |t|
      # t.index [:translation_id, :collect_id]
      # t.index [:collect_id, :translation_id]
    end
  end
end
