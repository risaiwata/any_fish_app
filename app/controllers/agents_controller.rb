class AgentsController < ApplicationController
  def show
    @agentname = current_agent.agentname
  end
end
