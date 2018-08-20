# coding: utf-8
require 'rails_helper'

RSpec.describe V1::DependentesController, type: :controller do

  describe 'GET #show' do

    before(:each) do
      @parente = FactoryBot.create :dependente
      @user = User.find(@parente.user_id)
      auth_headers = @user.create_new_auth_token
      request.headers.merge!(auth_headers)
      get :show, params: {id: @parente.id}
    end

    it 'responds with 200 status code' do
      expect(response.code).to eq('200')
    end

    it 'returns the serialized user attributes' do
      expect(JSON.parse(response.body)['data']['attributes']).to include({'name'=>'João', 'parentesco'=>'irmão'})
    end

  end

  describe 'GET #index' do

    before(:each) do
      @parente = FactoryBot.create :dependente
      @user = User.find(@parente.user_id)
      auth_headers = @user.create_new_auth_token
      request.headers.merge!(auth_headers)
      get :index
    end

    it 'responds with 200 status code' do
      expect(response.code).to eq('200')
    end

    it 'returns the serialized user attributes' do
      #expect(JSON.parse(response.body)).to eq(1)
      expect(JSON.parse(response.body)['data'].first['attributes']).to include({'name'=>'João', 'parentesco'=>'irmão'})
    end

  end
  describe 'POST #create' do
    before(:each) do
      @user = FactoryBot.create :user
      auth_headers = @user.create_new_auth_token
      request.headers.merge!(auth_headers)
      post :create, params: {dependente: {name: 'Juscelino', parentesco: 'filho', user_id: @user.id.to_s}}
    end
    it 'responds with 200 status code' do
      expect(response.code).to eq('201')
    end
    it 'returns the serialized user attributes' do
      #expect(JSON.parse(response.body)).to eq(1)
      expect(JSON.parse(response.body)['data']['attributes']).to include({'name'=>'Juscelino', 'parentesco'=>'filho'})
    end
  end
end
