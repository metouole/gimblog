class UsersController < ApplicationController


	def register
		@user = User.create(user_params)
		if @user.save
			response = { message: 'User Created Successfully'}
			render json: response, status: :created 
		else
			render json: @user.errors, status: :bad

		end 

	end

	def login
		authenticate(params[:email], params[:password])
	end

	def yvesomda
		render json: { message: 'You have passed authentication and authorization'}
	end

	def authenticate(email, password)
		command = AuthenticateUser.call(email, password)

		if command.success?
			render json: {
				access_token: command.result,
				message: 'Login Successful'
			}
		else
			render json: { error: command.errors }, status: :unauthorized
		end
	end




	private

	def user_params
		params.permit(:name, :email, :password)
	end




end
