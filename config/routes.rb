Todolist::Application.routes.draw do
  root :to => "navicontroller#home"
  get "/help", :to => "navicontroller#help", :as => :help
  get "/tasklists/destroy_all", :to => "tasklists#destroy_all", :as => :del_all
  post "/tasklists/check_task/:id", :to => "tasklists#check_task", :as => :check_task
  get "/tasklists/completed", :to => "tasklists#complete", :as => :completed_tasks
  resources :tasklists
end
