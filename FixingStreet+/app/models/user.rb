class User < ActiveRecord::Base
	validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
end
