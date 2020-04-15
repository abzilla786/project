# InSpec test for recipe IT-Jobs::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe package 'python3-pip' do
  it { should be_installed }
end

describe directory '/home/ubuntu/Downloads' do
  it {should exist}
end
