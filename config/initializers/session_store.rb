# Be sure to restart your server when you modify this file.

OpenIdSsl::Application.config.session_store :cookie_store, :key => '_open_id_ssl_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# OpenIdSsl::Application.config.session_store :active_record_store
