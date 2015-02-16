class NotesController < ApplicationController
  def index
    @notes = Note.all
    @new_note = Note.new
  end

  def create
    @note = Note.create(note_params)
  end

  private

    def note_params
      params.require(:note).permit(:title)
    end
end
