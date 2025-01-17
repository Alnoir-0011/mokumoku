class CreateForrowRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :follow_relationships do |t|
      t.references :user, foreign_key: true, null: false
      t.references :follow, foreign_key: { to_table: :users }, null: false

      t.timestamps

      t.index %i[ user_id follow_id ], unique: true
    end
  end
end
