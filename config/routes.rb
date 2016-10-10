Rails.application.routes.draw do
  devise_for :blood_donators
  devise_for :blood_banks

  root 'home#index'

  get 'inside/opa'

end
