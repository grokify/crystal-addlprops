# #Swagger Petstore
#
##No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
#The version of the OpenAPI document: 1.0.0
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 7.0.0-SNAPSHOT
#

require "uri"

module Addlprops
  class PetsApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Info for a specific pet
    # @param pet_id [String] The id of the pet to retrieve
    # @return [ShowPetById200Response]
    def show_pet_by_id(pet_id : String)
      data, _status_code, _headers = show_pet_by_id_with_http_info(pet_id)
      data
    end

    # Info for a specific pet
    # @param pet_id [String] The id of the pet to retrieve
    # @return [Array<(ShowPetById200Response, Integer, Hash)>] ShowPetById200Response data, response status code and response headers
    def show_pet_by_id_with_http_info(pet_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: PetsApi.show_pet_by_id ..."}
      end
      # verify the required parameter "pet_id" is set
      if @api_client.config.client_side_validation && pet_id.nil?
        raise ArgumentError.new("Missing the required parameter 'pet_id' when calling PetsApi.show_pet_by_id")
      end
      # resource path
      local_var_path = "/pets/{petId}".sub("{" + "petId" + "}", URI.encode_path(pet_id.to_s))

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "ShowPetById200Response"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"PetsApi.show_pet_by_id",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: PetsApi#show_pet_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ShowPetById200Response.from_json(data), status_code, headers
    end
  end
end
