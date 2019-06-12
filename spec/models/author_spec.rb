# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'creates an author' do
    authorbeard=Author.create(name: "me")
    expect(authorbeard).to be_valid
  end
end
