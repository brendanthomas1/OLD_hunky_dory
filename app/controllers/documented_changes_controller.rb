class DocumentedChangesController < ApplicationController
  before_action :set_documented_change, only: :show

  def index
    @documented_changes = DocumentedChange.all
  end

  def show; end

  def new
    @documented_change = DocumentedChange.new
  end

  def create
    @documented_change = DocumentedChange.new(documented_change_params)

    if @documented_change.save
      redirect_to documented_change_path(@documented_change)
    else
      # flash message
      render :new
    end
  end

  private

  def documented_change_params
    params.require(:documented_change).permit(:summary, :text)
  end

  def set_documented_change
    @documented_change = DocumentedChange.find params[:id]
  end
end
