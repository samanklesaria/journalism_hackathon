class CapturesController < ApplicationController
  def index
    @capture_parts = CapturePart.where('text like ?', "%#{params[:search]}%")
  end

  def show
    @search = params[:search]
    @capture = Capture.find(params[:id])
  end
end
