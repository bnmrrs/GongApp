GongApp::Application.routes.draw do

  resources :gongs do
    delete 'votes', to: 'gongs#reset_votes', on: :member, as: :reset_votes
    resources :votes
  end

  root "gongs#new"
end
