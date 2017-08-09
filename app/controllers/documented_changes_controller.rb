class DocumentedChangesController < ApplicationController
  before_action :set_documented_change, only: :show

  def index
    @documented_changes = DocumentedChange.all
  end

  def show; end

  private

  def set_documented_change
    @documented_change = DocumentedChange.find params[:id]
  end
end
