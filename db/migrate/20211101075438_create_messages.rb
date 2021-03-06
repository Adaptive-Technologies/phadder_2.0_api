class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :origin
      t.references :receiver, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
