class CreateJoinTableEventSubject < ActiveRecord::Migration[5.1]
  def change
    create_join_table :events, :subjects do |t|
      t.index [:event_id, :subject_id]
      t.index [:subject_id, :event_id]
    end
  end
end
