class DashboardPatientController < ApplicationController
  before_action :authenticate_patient!
end
