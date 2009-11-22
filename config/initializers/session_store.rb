# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurant_session',
  :secret      => '936f8dce76a18c186f3cc1a7a5cb80d83cd0b8e631c2b7598bd346bc4914afb24075c66cce026fe6fa3caab81ff0671a3583a597b4298ea757f7b94ebe149fb7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
