# == Schema Information
#
# Table name: dependentes
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  parentesco :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#

require 'rails_helper'

RSpec.describe Dependente, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
