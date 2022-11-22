class StaffsController < ApplicationController
    def index
        staffs = Staff.all
        render json: staffs
    end
end
