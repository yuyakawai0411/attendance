# == Schema Information
#
# Table name: companies
#
#  id              :bigint           not null, primary key
#  name            :string(255)      not null
#  work_end_time   :string(255)
#  work_start_time :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Company < ApplicationRecord
end
