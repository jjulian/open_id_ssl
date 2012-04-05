OpenIdSsl::Application.routes.draw do
  match '/auth/open_id/callback' => 'accounts#update'
  match '/auth/failure' => 'accounts#failure'
  root :to => 'accounts#show'
end
