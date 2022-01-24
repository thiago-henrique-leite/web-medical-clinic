class DashboardDoctorController < ApplicationController
  before_action :authenticate_doctor!
end
