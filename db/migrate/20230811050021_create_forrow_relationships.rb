class CreateForrowRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :forrow_relationships do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users }

      t.timestamps

      t.index %i[ user_id follow_id ], unique: true
    end
  end
end
