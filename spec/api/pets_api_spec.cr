# #Swagger Petstore
#
##No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
#The version of the OpenAPI document: 1.0.0
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 7.0.0-SNAPSHOT
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for Addlprops::PetsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PetsApi" do
  describe "test an instance of PetsApi" do
    it "should create an instance of PetsApi" do
      api_instance = Addlprops::PetsApi.new
      # TODO expect(api_instance).to be_instance_of(Addlprops::PetsApi)
    end
  end

  # unit tests for show_pet_by_id
  # Info for a specific pet
  # @param pet_id The id of the pet to retrieve
  # @param [Hash] opts the optional parameters
  # @return [ShowPetById200Response]
  describe "show_pet_by_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
