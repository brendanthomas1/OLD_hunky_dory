class DocumentedChangesController < ApplicationController
  def index
    @documented_changes = DocumentedChange.all
  end

  def show; end
end
