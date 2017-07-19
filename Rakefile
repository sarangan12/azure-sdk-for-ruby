#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
require 'dotenv/tasks'
require 'rspec/core/rake_task'
require 'open3'
require 'os'

version = File.read(File.expand_path('../ARM_VERSION', __FILE__)).strip

desc 'Azure Resource Manager related tasks which often traverse each of the arm gems'
namespace :arm do
  desc 'Delete ./pkg for each of the Azure Resource Manager projects'
  task :clean do
    each_gem do
      execute_and_stream(OS.windows? ? 'del /S /Q pkg 2>nul' : 'rm -rf ./pkg')
    end
  end

  desc 'Delete ./lib/generated for each of the Azure Resource Manager projects'
  task :clean_generated do
    each_gem do
      execute_and_stream(OS.windows? ? 'del /S /Q lib\generated 2>nul' : 'rm -rf lib/generated')
    end
  end

  desc 'Build gems for each of the Azure Resource Manager projects'
  task :build => :clean do
    each_gem do
      execute_and_stream('rake build')
    end
  end

  desc 'Push gem for each of the Azure Resource Manager projects'
  task :release, [:key] => :build do |_, args|
    each_gem do |dir|
      # Using execute method so that keys are not logged onto console
      execute("gem push ./pkg/#{dir}-#{version}.gem" + (args[:key].nil? ? '' : " -k #{args[:key]}"))
    end
  end

  desc 'Regen code for each of the Azure Resource Manager projects'
  task :regen => :clean_generated do
    REGEN_EXCLUDES = ['azure_sdk']
    each_gem do |dir|
      unless REGEN_EXCLUDES.include?(dir.to_s)
        puts "\nGenerating #{dir}\n"
        md = REGEN_METADATA[dir.to_sym]
        ar_base_command = "#{OS.windows? ? '' : 'mono '} #{REGEN_METADATA[:autorest_loc]}"

        command = "#{ar_base_command} #{md[:spec_uri]} --package-version=#{md[:version]} --namespace=#{md[:ns]} --package-name=#{md[:pn].nil? ? dir : md[:pn]} --output-folder=#{File.join(Dir.pwd, 'lib')} --ruby --azure-arm"
        command += " --#{md[:options]}" unless md[:options].nil?
        command += " --tag=#{md[:tag]}" unless md[:tag].nil?

        execute_and_stream(command)
      end
    end
  end

  desc 'Bundler related helper'
  namespace :bundle do
    desc 'bundle update for each of the Azure Resource Manager projects'
    task :update do
      each_gem do
        execute_and_stream('bundle update')
      end
    end
  end

  desc 'run specs for each of the Azure Resource Manager projects'
  task :spec => :dotenv do
    each_gem do |gem_dir|
      puts "Executing spec on #{gem_dir}"
      execute_and_stream('bundle install')
      execute_and_stream('bundle exec rspec')
    end
  end
end

task :default => :spec

def execute_and_stream(cmd)
  puts "running: #{cmd}"
  execute(cmd)
end

def execute(cmd)
  Open3.popen2e(cmd) do |_, stdout_err, wait_thr|
    while line = stdout_err.gets
      puts line
    end

    exit_status = wait_thr.value
    unless exit_status.success?
      abort "FAILED !!!"
    end
  end
end

def each_child
  top_level_dirs = Dir.entries('./').select { |f| File.directory?(f) and !(f =='.' || f == '..') }
  management_level_dirs = Dir.entries('management/.').select { |f| File.directory?("management/#{f}") and !(f =='.' || f == '..') }
  management_level_dirs.map! {|management_level_dir| "management/#{management_level_dir}"}
  dirs = top_level_dirs.concat(management_level_dirs)
  dirs.each do |dir|
    Dir.chdir(dir) do
      yield(dir)
    end
  end
end

def each_gem
  each_child do |dir|
    gem_dir = dir.split('/').last.to_sym
    if REGEN_METADATA.has_key?(gem_dir)
      yield gem_dir
    end
  end
end

REGEN_METADATA = {
    autorest_loc: ENV.fetch('AUTOREST_LOC', '../../../autorest/binaries/net45/AutoRest.exe'),
    azure_mgmt_insights: {
        spec_uri: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-insights/compositeInsightsManagementClient.json',
        ns: 'Azure::ARM::Insights',
        version: "0.10.1"
    }
}
