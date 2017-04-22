Rails.application.routes.draw do
  resources :pagamentos
  devise_for :users
  resources :utilizadors
  get 'login/index'

  resources :conta_bancaria
	resources :moedas
	resources :bancos
	resources :entidades
	resources :bairros
	resources :municipios
	resources :provincia
	resources :tipo_entidades
	root 'login#index'
	get 'inicio' => 'pagina_inicial#inicial'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
