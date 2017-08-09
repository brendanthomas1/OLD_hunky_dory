class AddSummaryToDocumentedChanges < ActiveRecord::Migration[5.1]
  def change
    add_column :documented_changes, :summary, :string, limit: 255
  end
end
