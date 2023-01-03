module Api
  module V1
    class ApplicationController < ActionController::API
      # before_action: set_current_user
      # before_action: redirect_to_login_path

      # private

      # def set_current_user
      #   if session[:operator_id]
      #     @current_user ||= Operator.find_by(id: session[:operator_id])
      #   end
      # end

      # def redirect_to_login_path
      #   return if logged_in?
      #   redirect_to api_v1_sessions_new_path
      # end

      # ログインメソッド
      def log_in(operator)
        session[:operator_id] = operator.id
      end

      # 現在ログインしているユーザーの情報
      def current_user
        if session[:operator_id]
          @current_user ||= Operator.find_by(id: session[:operator_id])
        end
      end

      # ログインしているかどうかを確認する
      def logged_in?
        !current_user.nil?
      end


      # 特定のユーザーのみに表示させていこと
      def current_user?(user)
        user == current_user
      end

      # ログアウトメソッド
      def log_out
        session.delete(:operator_id)
        @current_user = nil
      end
    end
  end
end