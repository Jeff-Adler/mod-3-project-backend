Rails.application.routes.draw do

  #Path 1: Retrieve list of categories
  #Path 2: Retrieve quiz questions & create quiz
  #Path 3: Patch score

  get 'quizzes/categories', to: 'quizzes#generate_categories'
  post 'quizzes/new', to: 'quizzes#create' #create quiz object AND render quiz questions
  patch'quizzes/:id/score', to: 'quizzes#save_score'

  resources :quizzes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
