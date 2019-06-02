class Api::V1::StressesController < ApplicationController
    def index
        @stresses = stress.all
        render json: @stresses
    end
end
