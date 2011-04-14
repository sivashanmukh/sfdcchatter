require 'forcedotcom'

# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
OmniAuth.config.full_host = 'https://localhost:3000'

module OmniAuth
  module Strategies
    #tell omniauth to load our strategy
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :forcedotcom, '3MVG9Y6d_Btp4xp4UFM5vILbQcnNG3N.2QP5NWRwdtvsXdksRCBczVbRnxryN_WwKmY4If._8oL7ABjipZilp', '2021526161004160921'
end
