class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :message
      t.references :subdomain

      t.timestamps
    end
    add_index :statuses, :subdomain_id
  end
end
