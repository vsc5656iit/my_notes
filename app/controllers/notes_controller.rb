class NotesController < ApplicationController
  def index
    @notes = current_user.notes.all
    @new_note = Note.new
  end

  def create
    @note = Note.create(note_params)
  end

  private

    def note_params
      params.require(:note).permit(:user_id, :title)
    end
end
