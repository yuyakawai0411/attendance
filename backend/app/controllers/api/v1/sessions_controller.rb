module Api
  module V1
    class SessionsController < Api::V1::ApplicationController

      # @param  [Hash(Symbol => Object)] ログインするために必要な情報
      # @return [String] ログインに成功したかどうかの判断
      def create
        operator = Operator.find_by(email: params[:session][:email].downcase)
        if operator && (operator.password == params[:session][:password])
          log_in(operator)
          render json: { message: 'ログインに成功しました!' }
        else
          render json: { message: 'ログイン情報が間違っています!' }
        end
      end

      # @param
      # @return [String] ログアウトに成功したかどうかの判断
      def destroy
        if logged_in?
          log_out
          render json: { message: 'ログアウトしました!' }
        else
          render json: { message: 'ログインしていません!' }
        end
      end
    end
  end
end
