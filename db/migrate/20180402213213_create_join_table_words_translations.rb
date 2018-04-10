class CreateJoinTableWordsTranslations < ActiveRecord::Migration[5.0]
  def change
    create_join_table :words, :translations do |t|
      # t.index [:word_id, :translation_id]
      # t.index [:translation_id, :word_id]
    end
  end
end
