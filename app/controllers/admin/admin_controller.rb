module Admin
  class AdminController < ApplicationController
    layout "admin"
    http_basic_authenticate_with name: 'unicorn', password: 'bmw'
  end
end
