# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_210_429_183_635) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'admins', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admins_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admins_on_reset_password_token', unique: true
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'name'
    t.datetime 'starting_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'projects_technologies', id: false, force: :cascade do |t|
    t.bigint 'project_id'
    t.bigint 'technology_id'
    t.index ['project_id'], name: 'index_projects_technologies_on_project_id'
    t.index ['technology_id'], name: 'index_projects_technologies_on_technology_id'
  end

  create_table 'projects_users', id: false, force: :cascade do |t|
    t.bigint 'project_id'
    t.bigint 'user_id'
    t.index ['project_id'], name: 'index_projects_users_on_project_id'
    t.index ['user_id'], name: 'index_projects_users_on_user_id'
  end

  create_table 'technologies', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'users_technologies', id: false, force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'technology_id'
    t.index ['technology_id'], name: 'index_users_technologies_on_technology_id'
    t.index ['user_id'], name: 'index_users_technologies_on_user_id'
  end
end
