require 'rails_helper'

RSpec.describe 'professors/new.html.erb', type: :view do

  before do
    @professor = Professor.new
    render
  end

  it 'displays tne information of a professor' do
    expect(response).to include( 'Name' )
    expect(response).to include( 'Area' )
  end

end
