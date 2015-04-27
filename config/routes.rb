Rails.application.routes.draw do

  resources :idears
  resources :ideas
  resources :platforms
  resources :roles
  resources :users do
    get :make_admin, on: :member
  end

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
    get 'signup' => 'users#new'
  end

  get 'myideas' => 'ideas#myideas'

  get 'ideadetails' => 'ideas#ideadetails'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'ascending' => 'ideas#ascending'
  get 'descending' => 'ideas#descending'
  get 'newest' => 'ideas#newest'
  get 'oldest' => 'ideas#oldest'

  get 'visitorascending' => 'visitors#ascending'
  get 'visitordescending' => 'visitors#descending'
  get 'visitornewest' => 'visitors#newest'
  get 'visitoroldest' => 'visitors#oldest'






  root to: 'visitors#index'
end
