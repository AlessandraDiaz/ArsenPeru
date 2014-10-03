OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '837644042934947', '7ae20519392942aecb5e830d5b04a716', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end