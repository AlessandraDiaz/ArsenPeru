class Incidence < ActiveRecord::Base
mount_uploader :picture, PictureUploader
belongs_to :ubigeo
belongs_to :type
belongs_to :motive
#validates_presence_of :description, :reference, :picture, :latitud, :longitud


end
