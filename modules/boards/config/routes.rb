OpenProject::Application.routes.draw do
  scope '', as: 'boards' do
    scope 'projects/:project_id', as: 'project_boards' do
      get '/boards(/*state)', to: 'boards/boards#index'
    end

    get '/boards(/*state)', to: 'boards/boards#index'
  end
end
