class TransportsController < ApplicationController
  def index
    @transports = Transport.all
  end
end
