Helpus::Application.routes.draw do
  root :to => "index#cover"
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  match 'home' => 'index#home', :as => 'user_root'
  match 'about-us' => 'index#about', :as => 'about'
  match 'contact-us' => 'index#contact', :as => 'contact'
  match 'accents/:id/:photo_id/' => 'accents#show', :as => 'accent_type_image'
  
  resources :comments, :dailies, :galleries, :accents

  namespace :admin do
    resources :users
    resources :magazines do 
      resources :accents do
        resources :accent_photos
      end
      resources :galleries
      resources :dailies do 
        resources :daily_photos
      end
    end
  end
end
