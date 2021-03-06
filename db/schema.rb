# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_409_174_617) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'carts', force: :cascade do |t|
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'friendly_id_slugs', force: :cascade do |t|
    t.string 'slug', null: false
    t.integer 'sluggable_id', null: false
    t.string 'sluggable_type', limit: 50
    t.string 'scope'
    t.datetime 'created_at'
    t.index %w[slug sluggable_type scope], name: 'index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope',
                                           unique: true
    t.index %w[slug sluggable_type], name: 'index_friendly_id_slugs_on_slug_and_sluggable_type'
    t.index %w[sluggable_type sluggable_id], name: 'index_friendly_id_slugs_on_sluggable_type_and_sluggable_id'
  end

  create_table 'line_items', force: :cascade do |t|
    t.bigint 'product_id', null: false
    t.bigint 'cart_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'quantity', default: 1
    t.index ['cart_id'], name: 'index_line_items_on_cart_id'
    t.index ['product_id'], name: 'index_line_items_on_product_id'
  end

  create_table 'pay_charges', id: :serial, force: :cascade do |t|
    t.string 'owner_type'
    t.integer 'owner_id'
    t.string 'processor', null: false
    t.string 'processor_id', null: false
    t.integer 'amount', null: false
    t.integer 'amount_refunded'
    t.string 'card_type'
    t.string 'card_last4'
    t.string 'card_exp_month'
    t.string 'card_exp_year'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.jsonb 'data'
  end

  create_table 'pay_subscriptions', id: :serial, force: :cascade do |t|
    t.string 'owner_type'
    t.integer 'owner_id'
    t.string 'name', null: false
    t.string 'processor', null: false
    t.string 'processor_id', null: false
    t.string 'processor_plan', null: false
    t.integer 'quantity', default: 1, null: false
    t.datetime 'trial_ends_at'
    t.datetime 'ends_at'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.string 'status'
    t.jsonb 'data'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'title'
    t.decimal 'price', precision: 5, scale: 2
    t.string 'description'
    t.string 'category'
    t.string 'image'
    t.string 'stock'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.string 'first_name'
    t.string 'last_name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'slug'
    t.string 'processor'
    t.string 'processor_id'
    t.datetime 'trial_ends_at'
    t.string 'card_type'
    t.string 'card_last4'
    t.string 'card_exp_month'
    t.string 'card_exp_year'
    t.text 'extra_billing_info'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index ['slug'], name: 'index_users_on_slug', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'line_items', 'carts'
  add_foreign_key 'line_items', 'products'
end
