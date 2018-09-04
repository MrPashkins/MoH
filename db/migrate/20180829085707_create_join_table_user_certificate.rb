class CreateJoinTableUserCertificate < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :certificates do |t|
      t.index [:user_id, :certificate_id]
      # t.certificatesate_copy :binary
      # t.start_datetime :datetime
      # t.end_datetime :datetime
      # t.approved :boolean
      # t.index [:certificate_id, :user_id]
     # t.timestamps
    end
  end
end
