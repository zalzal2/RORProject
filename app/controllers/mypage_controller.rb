class MypageController < ApplicationController
   def index
  @myinfos = Myinfo.all
  end

  def new
  end

  def create
  if user_signed_in?
    @myinfo = Myinfo.new
    @myinfo.user_id = current_user.id
    @myinfo.name = params[:myinfo_name]
    @myinfo.academic = params[:myinfo_academic]
    @myinfo.itlanguage = params[:myinfo_itlanguage]
    @myinfo.certificate = params[:myinfo_certificate]
    @myinfo.wish = params[:myinfo_wish]
    @myinfo.save
    redirect_to '/mypage/index'
    end
  end 
  
  def edit
  @myinfo = Myinfo.find(params[:myinfo_id])
  end

   def update
  @myinfo = Myinfo.find(params[:myinfo_id])
  @myinfo.name = params[:myinfo_name]
  @myinfo.academic = params[:myinfo_academic]
  @myinfo.itlanguage = params[:myinfo_itlanguage]
  @myinfo.certificate = params[:myinfo_certificate]
  @myinfo.wish = params[:myinfo_wish]
  @myinfo.save
  redirect_to '/mypage/index'
  end

  def destroy
  @myinfo = Myinfo.find(params[:myinfo_id])
  @myinfo.destroy

    redirect_to '/mypage/index'
  end
end
