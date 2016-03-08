require 'spec_helper'

describe package('ruby') do
  it { should be_installed }
end
