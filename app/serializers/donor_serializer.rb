class DonorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :donor_img_url
end
