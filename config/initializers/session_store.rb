# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kw_intranet_session',
  :secret      => 'db178d69668d1ac537d6d9e15cf16718efbdb35b73cc0f27780d085ff87bf2ddfde17807fce685ec6d927060d31a1b9d36c6279983292c62dd4a68c3e1de3d85'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
