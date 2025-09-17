Rails.application.routes.draw do
  resources :produtos do
    resources :movimentacoes, only: [:index, :new, :create]
  end

  root "produtos#index"
end
