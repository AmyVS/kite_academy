Rails.application.routes.draw do
  match('lessons', {via: :get, to: 'lesson#index'})
end
