class AlbumEntriesController < ApplicationController
  def index
    @entries = album.album_entries.to_a
  end

  def new
    @album_entry = album.album_entries.build
  end

  private

    # @return [Album]
  def album
    @album ||= current_user.albums.find(params[:album_id])
  end
end
