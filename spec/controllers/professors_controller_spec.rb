require 'rails_helper'

RSpec.describe ProfessorsController, type: :controller do
  p = Professor.new name:"Name", area:"area"

  it "returns and renders the index template" do
    get :index
    expect(response).to have_http_status(:success) # 200
    expect(response).to render_template("index")
  end

  context "with valid params" do

    it "gets a professors" do
      p.save
      get :show, params: {id:1}
      expect(response).to render_template("show")
      expect(response).to have_http_status(:success) # 200
    end

    it "creates a professor" do
      expect {
        post :create, params: {professor: {name: p.name, area: p.area}}
      }.to change(Professor, :count).by(1)
    end
  end
end
