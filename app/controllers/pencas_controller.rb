class PencasController < ApplicationController
  before_action :authenticate_web_user!

  def index
    @pencas = current_user.pencas
  end
end
