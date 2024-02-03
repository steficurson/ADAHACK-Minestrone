class CreatePastPapers < ActiveRecord::Migration[7.1]
  def change
    create_table :past_papers do |t|
      t.references :course, null: false, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
