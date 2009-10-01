# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_earn_it_session',
  :secret      => 'ec4319e48cc73706320c55f988c5d7c0c3d46f2dfcee09a0676d5f5a5b93c1fcae106fc4bf7dd235b1b29da3b7e4a9e37059a9c984182344eea58b3d464eaba0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
