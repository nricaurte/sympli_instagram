require 'rest-client'
module AppServices

  class PipedriveService

      def initialize(user)
        @pipedrive_url = Rails.application.credentials.dig(:pipedrive, :url)
        @pipedrive_api_token = Rails.application.credentials.dig(:pipedrive, :api_token)
        @user = user
      end

      def create_person
        begin
          if @user.pipedrive_id.nil?
            response =  RestClient.post(@pipedrive_url+'persons/?api_token='+@pipedrive_api_token,{"name": @user.username})
            results = JSON.parse(response.to_str)
            @user.update pipedrive_id:results["data"]['id'] if results['success']
          end
        rescue Exception => e
          puts "error #{e}"
        end
      end

  end
end