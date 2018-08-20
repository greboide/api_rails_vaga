# coding: utf-8
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

FactoryBot.define do
  factory :dependente do
    name { "João" }
    parentesco { "irmão" }
    association :user, factory: :user, strategy: :build
  end
end
