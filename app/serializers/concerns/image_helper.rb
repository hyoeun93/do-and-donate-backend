module ImageHelper
    extend ActiveSupport::Concern

    class_methods do 
        def photos_url(user_challenge)
            if user_challenge.photos.attached?
                user_challenge.photos.map{|photo| Rails.application.routes.url_helpers.url_for(photo)}
                
                # Rails.application.routes.url_helpers.url_for(user_challenge.photos[0])
            else 
                ""
            end 
        end
    end 
end 