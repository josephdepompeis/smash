class SessionsController < ApplicationController


    def login

          respond_to do |format|
            if request.post?
              user = User.find_by(email: params[:email])
              # byebug
              if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                # byebug
                format.json { render json: user, status: :created, location: user }
                #this is the working one, not sure why json doesnt work.
                format.html { render json: user, notice: 'User was successfully created.' }

                # redirect_to users_path, notice: "Login successful."
              else
                flash[:notice] = "You stink at remembering your password.  Try 'monkey'."
              end



              # format.html { redirect_to @user, notice: 'User was successfully created.' }
              # format.json { render :show, status: :created, location: @user }
            else
              format.html { render :new }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
          end


      # if request.post?
      #     user = User.find_by(email: params[:email])
      #   if user && user.authenticate(params[:password])
      #     session[:user_id] = user.id
      #     redirect_to users_path, notice: "Login successful."
      #
      #   else
      #     flash[:notice] = "You stink at remembering your password.  Try 'monkey'."
      #   end
      #
      # end
      # old controller before api fucked it up
      # if request.post?
      #     user = User.find_by(email: params[:email])
      #   if user && user.authenticate(params[:password])
      #     session[:user_id] = user.id
      #     redirect_to users_path, notice: "Login successful."
      #
      #   else
      #     flash[:notice] = "You stink at remembering your password.  Try 'monkey'."
      #   end
      #
      # end
    end

    def logout
      session[:user_id] = nil

      redirect_to sessions_login_path, notice: "See you real soon!"
    end

  end



  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
