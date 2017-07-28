require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to be }
  describe Comment.new(comment: "I'm a comment") do
    it { is_expected.to have_attributes(comment: "I'm a comment") }
  end
end
