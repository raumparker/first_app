require 'spec_helper'

describe ActiveAdmin::Scope do

  describe "creating a scope" do
    subject{ scope }

    context "when just a scope method" do
      let(:scope)        { ActiveAdmin::Scope.new :published }
      its(:name)         { should == "Published"}
      its(:id)           { should == "published"}
      its(:scope_method) { should == :published }
    end

    context "when scope method is :all" do
      let(:scope)        { ActiveAdmin::Scope.new :all }
      its(:name)         { should == "All"}
      its(:id)           { should == "all"}
      # :all does not return a chain but an array of active record
      # instances. We set the scope_method to nil then.
      its(:scope_method) { should == nil }
      its(:scope_block)  { should == nil }
    end

    context "when a name and scope method" do
      let(:scope)        { ActiveAdmin::Scope.new "With API Access", :with_api_access }
      its(:name)         { should == "With API Access"}
      its(:id)           { should == "with_api_access"}
      its(:scope_method) { should == :with_api_access }
    end

    context "when a name and scope block" do
      let(:scope)        { ActiveAdmin::Scope.new("My Scope"){|s| s } }
      its(:name)         { should == "My Scope"}
      its(:id)           { should == "my_scope"}
      its(:scope_method) { should == nil }
      its(:scope_block)  { should be_a(Proc)}
    end
  end # describe "creating a scope"

  describe "#display_if_block" do

    it "should return true by default" do
      scope = ActiveAdmin::Scope.new(:default)
      scope.display_if_block.call.should == true
    end

    it "should return the :if block if set" do
      scope = ActiveAdmin::Scope.new(:with_block, nil, :if => proc{ false })
      scope.display_if_block.call.should == false
    end

  end

end
