class MembershipController < ApplicationController
  def create
    membership = Membership.create!(mem_params)
    render json: membership, status: :created
  end
  
  private
  def mem_params
    params.permit(:client_id, :gym_id, :charge)
  end
end
