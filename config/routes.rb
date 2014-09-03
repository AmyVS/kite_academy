Rails.application.routes.draw do
  match('/', {via: :get, to: 'levels#index'})

  match('lessons', {via: :get, to: 'lessons#index'})
  match('lessons/new', {via: :get, to: 'lessons#new'})
  match('lessons', {via: :post, to: 'lessons#create'})
  match('lessons/:id', {via: :get, to: 'lessons#show'})
  match('lessons/:id/edit', {via: :get, to: 'lessons#edit'})
  match('lessons/:id', {via: [:patch, :put], to: 'lessons#update'})
  match('lessons/:id/destroy', {via: :delete, to: 'lessons#destroy'})

  match('levels', {via: :get, to: 'levels#index'})
  match('levels/new', {via: :get, to: 'levels#new'})
  match('levels', {via: :post, to: 'levels#create'})
  match('levels/:id', {via: :get, to: 'levels#show'})
  match('levels/:id/edit', {via: :get, to: 'levels#edit'})
  match('levels/:id', {via: [:patch, :put], to: 'levels#update'})
  match('levels/:id/destroy', {via: :delete, to: 'levels#destroy'})

  match('levels/:level_id/lessons/:id', {via: :get, to: 'lessons#show'})

end
