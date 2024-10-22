Rails.application.routes.draw do
  get "/", to: "process_roll#home"
  
  get "dice/:numberofdice/:numberofsides", to: "process_roll#roll"
end
