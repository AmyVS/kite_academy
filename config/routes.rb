Rails.application.routes.draw do
  match('lessons', {via: :get, to: 'lesson#index'})
  match('lessons/new', {via: :get, to: 'lesson#new'})
  match('lessons', {via: :post, to: 'lesson#create'})
  match('lessons/:id', {via: :get, to: 'lesson#show'})
  match('lessons/:id/edit', {via: :get, to: 'lesson#edit'})
  match('lessons/:id', {via: [:patch, :put], to: 'lesson#update'})
  match('lessons/:id/destroy', {via: :delete, to: 'lesson#destroy'})

  match('levels', {via: :get, to: 'level#index'})
  match('levels/new', {via: :get, to: 'level#new'})
  match('levels', {via: :post, to: 'level#create'})
  match('levels/:id', {via: :get, to: 'level#show'})
  match('levels/:id/edit', {via: :get, to: 'level#edit'})
  match('levels/:id', {via: [:patch, :put], to: 'level#update'})
  match('levels/:id/destroy', {via: :delete, to: 'level#destroy'})

end
