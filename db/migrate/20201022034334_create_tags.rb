class CreateTags < ActiveRecord::Migration[6.0]
  def change
    enable_extension("citext")
    create_table :tags do |t|
      t.citext :name, null: false

      t.timestamps
    end
    add_index :tags, :name, unique: true
  end
end
