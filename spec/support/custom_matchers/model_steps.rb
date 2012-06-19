module ModelSteps
  step "a user" do
    @user = Fabricate(:user)
  end

  step "a verification suite" do
    @vs = Fabricate(:verification_suite)
  end

  step "I should see an analysis case" do
    @ac = Fabricate(:analysis_case)
  end

  step "I should see a case test" do
    @ct = Fabricate(:case_test)
  end

  step "I should see user ownership" do
    @user.verification_suites.build
    @user.verification_suites.nil?
  end
end
