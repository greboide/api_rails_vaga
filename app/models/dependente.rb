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

class Dependente < ApplicationRecord
  belongs_to :user
  validates :name, :parentesco, presence: true
  validates :parentesco, inclusion: { in: %w{filho filha conjuge pai mãe irmão irmã tio tia avô avó}, message: "%{value} não é parente!"} 
end
