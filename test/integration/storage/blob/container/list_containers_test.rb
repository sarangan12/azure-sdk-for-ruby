#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "integration/test_helper"
require "azure/storage/blob/blob_service"

describe Azure::Storage::Blob::BlobService do
  subject { Azure::Storage::Blob::BlobService.new }
  
  describe '#list_containers' do
    let(:container_names) { [ContainerNameHelper.name, ContainerNameHelper.name] }
    let(:metadata) { { "CustomMetadataProperty"=>"CustomMetadataValue" } }
    before { 
      container_names.each { |c|
        subject.create_container c, metadata
      }
    }
    after { TableNameHelper.clean }

    it 'lists the containers for the account' do
      result =  subject.list_containers

      found = 0
      result.containers.each { |c|
        found += 1 if container_names.include? c.name
      }
      found.must_equal container_names.length
    end
    
    it 'returns metadata if the :metadata=>true option is used' do
      result = subject.list_containers({ :metadata => true })

      found = 0
      result.containers.each { |c|
        if container_names.include? c.name
          found += 1 
          metadata.each { |k,v|
            c.metadata.must_include k.downcase
            c.metadata[k.downcase].must_equal v
          }
        end
      }
      found.must_equal container_names.length
    end
  end
end
