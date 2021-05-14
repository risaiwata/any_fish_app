# frozen_string_literal: true

class DeviseCreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      ## Database authenticatable
      t.string :agentname,           null: false
      t.string :agentname_kana,      null: false
      t.string :email,               null: false, default: "", unique: true
      t.string :encrypted_password,  null: false, default: ""
      t.string :first_name,          null: false
      t.string :last_name,           null: false
      t.string :first_name_kana,     null: false
      t.string :last_name_kana,      null: false
      t.integer :prefecture_id,          null: false, default: "0"
      t.string :address,             null: false
      t.string :harbor,              null: false
      t.text   :how_to_go1,          null: false
      t.text   :how_to_go2
      t.string :tel1,                null: false
      t.string :tel2
      t.string :homepage
      t.string :regular_holiday,     null: false
      t.string :ice,                 null: false
      t.string :target,              null: false
      t.integer :ship_type_id,           null: false
      t.integer :fishing_type_id,        null: false
      t.text   :profile 



      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

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

    add_index :agents, :email,                unique: true
    add_index :agents, :reset_password_token, unique: true
    # add_index :agents, :confirmation_token,   unique: true
    # add_index :agents, :unlock_token,         unique: true
  end
end
