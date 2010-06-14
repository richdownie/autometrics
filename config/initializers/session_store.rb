# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_autometrics_session',
  :secret      => 'e1a992a570236d697e44dd46b65f16f07f13ae00bc0e0d7011bd2152bce100f934665e11a536bf325500d97b32ae93613d627c1be18b56c5a4d67afa2673d820'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
