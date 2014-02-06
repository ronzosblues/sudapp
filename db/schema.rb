# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140206014601) do

  create_table "albums", force: true do |t|
    t.string   "album_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comment_photos", force: true do |t|
    t.string   "content"
    t.integer  "photo_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comment_photos", ["photo_id"], name: "index_comment_photos_on_photo_id"
  add_index "comment_photos", ["user_id"], name: "index_comment_photos_on_user_id"

  create_table "comment_posts", force: true do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comment_posts", ["post_id"], name: "index_comment_posts_on_post_id"
  add_index "comment_posts", ["user_id"], name: "index_comment_posts_on_user_id"

  create_table "pedidos", force: true do |t|
    t.integer  "user_id"
    t.integer  "producto_id"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["producto_id"], name: "index_pedidos_on_producto_id"
  add_index "pedidos", ["user_id"], name: "index_pedidos_on_user_id"

  create_table "photos", force: true do |t|
    t.integer  "album_id"
    t.string   "photo_title"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["album_id"], name: "index_photos_on_album_id"

  create_table "posts", force: true do |t|
    t.string   "post_title"
    t.text     "post_body"
    t.string   "post_photo_file_name"
    t.string   "post_photo_content_type"
    t.integer  "post_photo_file_size"
    t.datetime "post_photo_updated_at"
    t.string   "post_autor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "inicio"
  end

  create_table "productos", force: true do |t|
    t.string   "nombre_producto"
    t.text     "descripcion_producto"
    t.string   "foto_producto_file_name"
    t.string   "foto_producto_content_type"
    t.integer  "foto_producto_file_size"
    t.datetime "foto_producto_updated_at"
    t.integer  "tipo_producto_id"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productos", ["tipo_producto_id"], name: "index_productos_on_tipo_producto_id"

  create_table "skaters", force: true do |t|
    t.string   "skater_name"
    t.text     "skater_body"
    t.string   "skater_photo_file_name"
    t.string   "skater_photo_content_type"
    t.integer  "skater_photo_file_size"
    t.datetime "skater_photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_productos", force: true do |t|
    t.string   "nombre_tipo_producto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.boolean  "admin"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: true do |t|
    t.string   "video_title"
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
