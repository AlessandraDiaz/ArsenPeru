class Incidence < ActiveRecord::Base
mount_uploader :picture, PictureUploader

#validates_presence_of :description, :reference, :picture, :latitud, :longitud


end
