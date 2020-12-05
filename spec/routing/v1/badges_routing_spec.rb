# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::BadgesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/v1/badges').to route_to('v1/badges#index')
    end

    it 'routes to #show' do
      expect(get: '/v1/badges/1').to route_to('v1/badges#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/v1/badges').not_to route_to('v1/badges#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/v1/badges/1').not_to route_to('v1/badges#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/v1/badges/1').not_to route_to('v1/badges#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/v1/badges/1').not_to route_to('v1/badges#destroy', id: '1')
    end
  end
end
