class AddCerttificateCopyToUserCertificates < ActiveRecord::Migration[5.2]
  def change
    add_column :certificates_users, :certificates_copy, :binary
    add_column :certificates_users, :start_datetime, :datetime
    add_column :certificates_users, :end_datetime, :datetime
    add_column :certificates_users, :approved, :boolean
  end
end
