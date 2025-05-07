class Test::ImagesController < ApplicationController
  def index
    @images = Image.all
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to test_images_path }
      end
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :file)
  end
end
