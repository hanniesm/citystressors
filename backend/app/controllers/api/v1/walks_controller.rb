class Api::V1::WalksController < ApplicationController
    def index
        @walks = Walk.all
        render json: @walks
    end
end
