require 'rdoc/task'
require 'rake/testtask'

Rake::RDocTask.new do |t|
    t.rdoc_files.include '*.rb'
    t.options << '--diagram'
end

Rake::TestTask.new do |t|
    t.test_files = FileList['test/tc_*.rb']
end
