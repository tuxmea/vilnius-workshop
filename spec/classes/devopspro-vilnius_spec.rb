require 'spec_helper'

describe 'devopspro_vilnius', :type => :class do
  context 'it should compile' do
    it { should compile.with_all_deps }
  end
end
