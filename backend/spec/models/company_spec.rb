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
require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
