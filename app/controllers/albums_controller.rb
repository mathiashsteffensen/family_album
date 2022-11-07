class AlbumsController < ApplicationController
  before_action :require_authentication!

  def index
    @albums = current_user.albums.to_a
  end

  def new
    @album = current_user.albums.build
  end

  def create
    @album = current_user.albums.build(album_params)
    @album.save!

    redirect_to new_album_album_entry_path(album_id: @album.id)
  end

  private

  def album_params
    params.require(:album).permit(:name)
  end
end
