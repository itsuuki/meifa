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

ActiveRecord::Schema.define(version: 20200120070423) do

  create_table "accessories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "accessory"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accessory_coordinations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "accessory_id"
    t.integer  "coordination_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["accessory_id"], name: "index_accessory_coordinations_on_accessory_id", using: :btree
    t.index ["coordination_id"], name: "index_accessory_coordinations_on_coordination_id", using: :btree
  end

  create_table "bottoms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "bottom"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chage_coordinations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chages_coordinations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coordinations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "season"
    t.string   "coordination"
    t.string   "outer"
    t.integer  "outer_id"
    t.integer  "inner_id"
    t.integer  "bottom_id"
    t.integer  "shoes_id"
    t.integer  "hat_id"
    t.integer  "accessory_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["accessory_id"], name: "index_coordinations_on_accessory_id", using: :btree
    t.index ["bottom_id"], name: "index_coordinations_on_bottom_id", using: :btree
    t.index ["hat_id"], name: "index_coordinations_on_hat_id", using: :btree
    t.index ["inner_id"], name: "index_coordinations_on_inner_id", using: :btree
    t.index ["outer_id"], name: "index_coordinations_on_outer_id", using: :btree
    t.index ["shoes_id"], name: "index_coordinations_on_shoes_id", using: :btree
    t.index ["user_id"], name: "index_coordinations_on_user_id", using: :btree
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "coordination_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["coordination_id"], name: "index_favorites_on_coordination_id", using: :btree
    t.index ["user_id", "coordination_id"], name: "index_favorites_on_user_id_and_coordination_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "hats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "hat"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "inner"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "outer"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "shoe"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["name"], name: "index_users_on_name", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "accessory_coordinations", "accessories"
  add_foreign_key "accessory_coordinations", "coordinations"
  add_foreign_key "coordinations", "accessories"
  add_foreign_key "coordinations", "bottoms"
  add_foreign_key "coordinations", "hats"
  add_foreign_key "coordinations", "inners"
  add_foreign_key "coordinations", "outers"
  add_foreign_key "coordinations", "shoes", column: "shoes_id"
  add_foreign_key "coordinations", "users"
  add_foreign_key "favorites", "coordinations"
  add_foreign_key "favorites", "users"
end
