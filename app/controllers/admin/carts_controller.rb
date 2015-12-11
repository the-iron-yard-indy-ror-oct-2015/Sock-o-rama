module Admin
  class CartsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Cart.all.paginate(10, params[:page])
    # end
      def current_user_session
        return @current_user_session if defined?(@current_user_session) && !@current_user_session.nil?
        @current_user_session = UserSession.find
      end

      def current_user
        return @current_user if defined?(@current_user)
        @current_user = current_user_session && current_user_session.user
      end


    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Cart.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
