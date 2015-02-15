require 'rails_helper'

RSpec.describe Note, type: :model do
  subject {build(:note)}

  it { should validate_presence_of(:title) }
end
