Rails.application.routes.draw do

  post :article_comment, controller: :landing, action: :article_comment
  root controller: :landing, action: :index

end
