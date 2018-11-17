require 'rails_helper'

RSpec.describe User, type: :model do

  it "ユーザー登録が正常に行えること" do
    user = User.new(
          name:  "森重太郎",
          email: "morishige@fctokyo.com",
          password: "fctokyo0003",
          admin: 0,
          address: "東京都調布市西町３７６−３"
  )
  expect(user.name).to eq "森重太郎"
  expect(user.email).to eq "morishige@fctokyo.com"
  expect(user.admin).to eq false
  expect(user.address).to eq "東京都調布市西町３７６−３"
  end

end
