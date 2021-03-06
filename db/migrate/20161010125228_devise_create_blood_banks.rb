class DeviseCreateBloodBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_banks do |t|

      t.string :name
      t.string :phone
      t.string :branch_line
      t.string :cnpj,               null: false, default: ""
      t.string :lat
      t.string :long
      t.string :address

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at



      t.timestamps null: false
    end

    add_index :blood_banks, :cnpj,                 unique: true
    add_index :blood_banks, :reset_password_token, unique: true
    # add_index :blood_banks, :confirmation_token,   unique: true
    # add_index :blood_banks, :unlock_token,         unique: true
  end
end
