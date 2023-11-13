Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root "flats#index"
  get "/flats/:id", to: "flats#show", as: "flat"
end


# READ
  # index (all flats)
  # show (one flat)

# CREATE
  # new (form de creation)
  # create (action de creation)

# UPDATE
  # edit (form de creation)
  # update (action de creation)

# DELETE
  # delete
