RSpec.describe "GET /api/articles/:id" do
  let!(:article) { create(:article)}
  describe "successfully" do
    before do
      get "/api/articles/#{article.id}"
    end

    it "is expected to return 200 status" do
      expect(response).to have_http_status 200
    end

    it "is expected to return title" do
      expect(response_json["article"]["title"]).to eq "First title"
    end

    it "is expected to return body" do
      expect(response_json["article"]["body"]).to eq "why did Emma left Craft Academy?"
    end

    it "is expected to return date" do
      expect(response_json["article"]["date"]).to eq Time.now.strftime("%F")
    end
  end
end
