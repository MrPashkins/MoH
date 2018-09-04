class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :certificate_name
      t.text :description

      t.timestamps
    end
  end
end
