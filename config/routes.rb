Rails.application.routes.draw do
    get '/employee' => 'employees#list'
end
