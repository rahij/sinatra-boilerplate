class App
  helpers do
    def check_password_and_get_user(params)
      user = User.where(
        email: params[:email],
      ).last
      if user && user.password == params[:password]
        user
      else
        nil
      end
    end

    def respond_as_unauthorized
      halt 401, "Not authorized\n"
    end
  end

  get '/' do
    erb :index
  end
end
