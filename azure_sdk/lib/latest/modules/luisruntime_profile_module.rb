# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_luisruntime'

module Azure::Profiles::Latest
  module LuisRuntime
    Prediction = Azure::CognitiveServices::LuisRuntime::V2_0::Prediction

    module Models
      Sentiment = Azure::CognitiveServices::LuisRuntime::V2_0::Models::Sentiment
      LuisResult = Azure::CognitiveServices::LuisRuntime::V2_0::Models::LuisResult
      EntityModel = Azure::CognitiveServices::LuisRuntime::V2_0::Models::EntityModel
      CompositeChildModel = Azure::CognitiveServices::LuisRuntime::V2_0::Models::CompositeChildModel
      CompositeEntityModel = Azure::CognitiveServices::LuisRuntime::V2_0::Models::CompositeEntityModel
      IntentModel = Azure::CognitiveServices::LuisRuntime::V2_0::Models::IntentModel
      APIError = Azure::CognitiveServices::LuisRuntime::V2_0::Models::APIError
      EntityWithScore = Azure::CognitiveServices::LuisRuntime::V2_0::Models::EntityWithScore
      EntityWithResolution = Azure::CognitiveServices::LuisRuntime::V2_0::Models::EntityWithResolution
    end

    class LuisRuntimeDataClass
      attr_reader :prediction, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::LuisRuntime::V2_0::LuisRuntimeClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @prediction = @client_0.prediction

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/LuisRuntime"
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

      class ModelClasses
        def sentiment
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::Sentiment
        end
        def luis_result
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::LuisResult
        end
        def entity_model
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::EntityModel
        end
        def composite_child_model
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::CompositeChildModel
        end
        def composite_entity_model
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::CompositeEntityModel
        end
        def intent_model
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::IntentModel
        end
        def apierror
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::APIError
        end
        def entity_with_score
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::EntityWithScore
        end
        def entity_with_resolution
          Azure::CognitiveServices::LuisRuntime::V2_0::Models::EntityWithResolution
        end
      end
    end
  end
end