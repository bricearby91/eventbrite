class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
			t.belongs_to :user
			t.belongs_to :event
			t.string :stripe_customer_id
      t.timestamps
    end
  end
end
