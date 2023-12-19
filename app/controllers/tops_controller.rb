class TopsController < ApplicationController
  def index
    @layouts = Layout.all
  end
end
