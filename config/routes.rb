Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :recipes

  get 'up' => 'rails/health#show', as: :rails_health_check
  get 'service-worker' => 'pwa#service_worker', as: :pwa_service_worker
  get 'manifest' => 'pwa#manifest', as: :pwa_manifest

  root "recipes#index"
end
