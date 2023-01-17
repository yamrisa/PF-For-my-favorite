class Admin::HomeController < ApplicationController
  def top
    @outputs = Output.all
  end
end
