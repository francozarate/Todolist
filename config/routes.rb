Todolist::Application.routes.draw do
  root :to => "navicontroller#home"
  get "/help", :to => "navicontroller#help", :as => :help
  resources :tasklists
end
