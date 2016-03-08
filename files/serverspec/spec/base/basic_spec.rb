require 'spec_helper'

describe command('cat /etc/timezone') do
  its(:stdout) { should match /Asia\/Tokyo/ }
end
