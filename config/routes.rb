SuaReforma::Application.routes.draw do
  root :to => "pages#home"

  controller :pages do
    get "/", :action => :home
    get "/obrigado", :action => :thank_you
    get "/saiba-mais", :action => :more
  end

  controller :providers do
    get  "/cadastre-se", :action => :new,    :as => "new_provider"
    post "/providers", :action => :create
  end
  
  controller :pages do
    get "/elvis-o-rei", :action => :list
  end

  controller :sessions do
    get "/login", :action => :new
    post "/login", :action => :create, :as => false
    get "/logout", :action => :destroy
  end
end
