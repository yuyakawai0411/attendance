# vi: ft=ruby
# frozen_string_literal: true

create_table 'companies', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
  t.string 'name', null: false
  t.string 'work_start_time'
  t.string 'work_end_time'
  t.datetime 'created_at', null: false
  t.datetime 'updated_at', null: false
end

create_table 'operators', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
  t.integer 'company_id', null: false
  t.string 'name', null: false
  t.string 'email'
  t.string 'password'
  t.integer 'role'
  t.datetime 'created_at', null: false
  t.datetime 'updated_at', null: false

  t.index ['company_id'], name: 'index_operators_on_company_id', using: :btree
end
