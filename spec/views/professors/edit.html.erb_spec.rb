require 'rails_helper'

RSpec.describe 'professors/edit.html.erb', type: :view do

  before do
    p = Professor.new name:"JJ", area:"CC"
    p.save
    @professor = p
    controller.extra_params = { id: @professor.id }
    render
  end

  it 'displays tne information of a professor' do
    expect(response).to include( @professor.name )
    expect(response).to include( @professor.area )
  end

end
