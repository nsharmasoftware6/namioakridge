Rails.application.routes.draw do
  resources :lesson_payments
  resources :bookings
  resources :schedules
  resources :accounts
  resources :clients
  resources :trainers
  resources :lessons
  resources :volunteer_bookings

  #post '/build/volunteer/booking' => 'volunteer_bookings#build'

  post '/volunteer_bookings/new' => 'volunteer_bookings#create'

  root to: 'bookings#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
