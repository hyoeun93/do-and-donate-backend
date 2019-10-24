class Api::V1::PicturesController < ApplicationController
    # respond_to :json

    def index
        
    end 

    def create 
        # send params[:image] to AWS
        @picture = Picture.new(picture_params)
        @picture.image.attach(io: image_io)

        unless @picture.save
            puts @picture.errors.inspect
            render json: { error: "Unable to create post" }, status: 422
        end 
    end

    private

    def picture_params
        params.require(:picture).permit(:url)
    end

    def image_io
        decoded_image = Base64.decode64(params[:picture][:url])
         StringIO.new(decoded_image)
    end
      
end
