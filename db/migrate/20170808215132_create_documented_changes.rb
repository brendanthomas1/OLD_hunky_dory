class CreateDocumentedChanges < ActiveRecord::Migration[5.1]
  def change
    create_table :documented_changes do |t|
      t.text :text

      t.timestamps
    end
  end
end
