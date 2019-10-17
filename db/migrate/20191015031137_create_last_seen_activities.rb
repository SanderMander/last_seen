class CreateLastSeenActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :last_seen_activities do |t|
      t.integer :visits_count, default: 0
      t.string :last_seen_token
      t.belongs_to :user, foreign_key: true
      t.boolean :archived, default: false

      t.timestamps
    end
  end
end
