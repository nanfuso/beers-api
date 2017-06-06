ActiveRecord::Schema.define(version: 20170606002925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.string "yeast"
    t.string "malts"
    t.string "ibu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
