require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "POST /sessions" do
    subject { post '/api/v1/sessions', params: params }
    let!(:operator) { create(:operator) }

    context 'emailとpasswordが正しい時' do
      let(:params) { { session: { email: 'test@test.com', password: 'password' } } }
      it { is_expected.to eq(200) }
      it do
        subject
        expect(JSON.parse(response.body)["message"]).to eq("ログインに成功しました!")
      end
    end

    context 'emailが誤っている時' do
      let(:params) { { session: {email: 'invalid@test.com', password: 'password'} } }
      it { is_expected.to eq(200) }
      it do
        subject
        expect(JSON.parse(response.body)["message"]).to eq("ログイン情報が間違っています!")
      end
    end

    context 'passwordが誤っている時' do
      let(:params) { { session: {email: 'test@test.com', password: 'invalid'} } }
      it { is_expected.to eq(200) }
      it do
        subject
        expect(JSON.parse(response.body)["message"]).to eq("ログイン情報が間違っています!")
      end
    end
  end

  describe "delete /sessions" do
    subject { delete "/api/v1/sessions/#{operator.id}" }
    let!(:operator) { create(:operator) }
  
    context 'ログイン中の時' do
      before do
        post '/api/v1/sessions', params: { session: { email: 'test@test.com', password: 'password' } }
      end

      it { is_expected.to eq(200) }
      it do
        subject
        expect(JSON.parse(response.body)["message"]).to eq("ログアウトしました!")
      end
    end

    context 'ログインしていない時' do
      it { is_expected.to eq(200) }
      it do
        subject
        expect(JSON.parse(response.body)["message"]).to eq("ログインしていません!")
      end
    end
  end
end
