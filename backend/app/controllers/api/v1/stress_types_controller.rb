class Api::V1::StressTypesController < ApplicationController
    def index
        @stressTypes = stressType.all
        render json: @stressTypes
    end
end
