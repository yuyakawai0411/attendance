module Api
  class SessionsController < Api::ApplicationController

    def new
    end

    def show
      operator = Operator.find_by(email: params[:email])
      if operator && operator.password == params[:password]
        render json: { operator: { name: operator.name, email: operator.email } }
      else
        render json: { message: 'ログインに失敗しました' }
      end
    end

    def destroy
    end
  end
end
