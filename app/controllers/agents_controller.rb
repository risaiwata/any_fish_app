class AgentsController < ApplicationController
  def show
    @agent = Agent.find(params[:id])
    @blogs = current_agent.blogs.page(params[:page]).per(4)
    respond_to do |format|
      format.html
      format.js if request.xhr?
    end
  end

  def edit
    @agent = Agent.find(params[:id])
  end

  def update
    agent = Agent.find(params[:id])
    agent.update(agent_params)
    if agent.save
      flash[:notice] ="編集に成功しました"
      redirect_to agent_path(agent.id)
    else
      render :edit
    end
  end

  private

def agent_params
  params.require(:agent).permit(:agentname, :agentname_kana, :first_name, :last_name, :first_name_kana, :last_name_kana, :prefecture_id, :address, :harbor,:how_to_go1, :how_to_go2, :tel1, :tel2, :homepage, :regular_holiday, :ice, :target, :ship_type_id, :fishing_type_id, :profile, :sheet)
end

end

