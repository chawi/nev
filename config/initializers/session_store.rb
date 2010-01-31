# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nev_session',
  :secret      => 'e44588ee30fe15928daf8da00aae8c66621fac62f7080021764ad013a90c4743d11e138714899ed80e1516b185a542171318e34df53a6e503a4fd5a0c7aa1572'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
