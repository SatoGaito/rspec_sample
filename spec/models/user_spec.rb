require 'rails_helper'

RSpec.describe User, type: :model do

  describe "名前の表示" do

    let(:params) {{name: "satou"}}

    it "年齢1:ユーザの名前が「〜ちゃん」と取得できること" do
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "satouちゃん"
    end

    it "年齢15:ユーザの名前が「〜君」と取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "satou君"
    end

    it "年齢20:ユーザの名前が「〜さん」と取得できること" do
      params.merge!(age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "satouさん"
    end

    it "年齢-1:「不正な値です」と取得できること" do
      params.merge!(age: -1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end

  end
  
end
