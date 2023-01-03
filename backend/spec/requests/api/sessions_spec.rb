# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  describe 'POST /sessions' do
    before do
      create(:operator)
      post '/api/v1/sessions', params:
    end

    context 'when correct email and correct password' do
      let(:params) { { session: { email: 'test@test.com', password: 'password' } } }

      it { expect(response.status).to eq(200) }

      it 'login sucsess message' do
        expect(JSON.parse(response.body)['message']).to eq('ログインに成功しました!')
      end
    end

    context 'when invalid email and correct password' do
      let(:params) { { session: { email: 'invalid@test.com', password: 'password' } } }

      it { expect(response.status).to eq(200) }

      it 'login failed message' do
        expect(JSON.parse(response.body)['message']).to eq('ログイン情報が間違っています!')
      end
    end

    context 'when correct email and invalid password' do
      let(:params) { { session: { email: 'test@test.com', password: 'invalid' } } }

      it { expect(response.status).to eq(200) }

      it 'login failed message' do
        expect(JSON.parse(response.body)['message']).to eq('ログイン情報が間違っています!')
      end
    end
  end

  describe 'delete /sessions' do
    let!(:operator) { create(:operator) }

    context 'when logged_in' do
      before do
        post '/api/v1/sessions', params: { session: { email: 'test@test.com', password: 'password' } }
        delete "/api/v1/sessions/#{operator.id}"
      end

      it { expect(response.status).to eq(200) }

      it 'logout sucsess message' do
        expect(JSON.parse(response.body)['message']).to eq('ログアウトしました!')
      end
    end

    context 'when not logged_in' do
      before do
        delete "/api/v1/sessions/#{operator.id}"
      end

      it { expect(response.status).to eq(200) }

      it 'logout failed message' do
        expect(JSON.parse(response.body)['message']).to eq('ログインしていません!')
      end
    end
  end
end
