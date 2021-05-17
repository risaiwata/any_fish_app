class AgentsController < ApplicationController
  def show
    @agent = Agent.find(current_agent.id)
  end
end

