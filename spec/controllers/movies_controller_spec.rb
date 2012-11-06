require 'spec_helper'

describe MoviesController do

  def mock_movie(stubs={})
      @mock_movie ||= mock_model(Movie, stubs).as_null_object
  end


  describe 'creating movie' do
    fixtures :movies
    it 'creates movie' do
      Movie.create!(:id => 333, :title => 'Star Wars')
      post 'create' , :movie => {:id => 333, :title => 'Star Wars'}
    end
  end


  describe 'deleting movie' do
    fixtures :movies
    it 'destroys movie' do
      delete :destroy, :id => "1"
    end
  end



end