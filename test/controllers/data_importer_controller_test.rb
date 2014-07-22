require 'test_helper'

class DataImporterControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should accept an uploaded file and redirect to index with appropriate success/error message" do
    test_file = Rack::Test::UploadedFile.new("#{Rails.root}/example_input.tab")
    post :create, purchases_file: test_file
    assert_redirected_to data_importer_index_path(notice: "File was successfully imported. Total amount gross revenue: $95.00")

    test_file = Rack::Test::UploadedFile.new("#{Rails.root}/Gemfile")
    post :create, purchases_file: test_file
    assert_redirected_to data_importer_index_path(error: 'Import failed. Please make sure your file is properly formatted.')
  end

end
