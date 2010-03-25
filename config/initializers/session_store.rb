# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_single_session',
  :secret      => '8b61e45c8c4d1c8a5fa2d5b88424186cb18681fcfa4dd4f6bf99f39a8aa10e1f02a171cd0f27d36ff908cb7fd7734801b7625648c5225598b97593da8258b600'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
