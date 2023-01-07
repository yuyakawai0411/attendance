# frozen_string_literal: true

# == Schema Information
#
# Table name: operators
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  name       :string(255)      not null
#  password   :string(255)
#  role       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer          not null
#
# Indexes
#
#  index_operators_on_company_id  (company_id)
#
require 'rails_helper'

RSpec.describe Operator, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
