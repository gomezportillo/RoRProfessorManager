require 'rails_helper'

RSpec.describe 'professors/index.html.erb', type: :view do

  before do
    @professors = Professor.all
    # render :template => "professors/index.html.erb"
    render
  end

  it 'displays professor list' do
    expect(response).to include("Name")
    expect(response).to include("Area")
  end

end
