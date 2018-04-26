require 'test_helper'

class AlertTest < ActiveSupport::TestCase

	test "should create valid alert" do
		@alert = Alert.new(alert_type: "alert", emergency_type: "emergency", affected_areas: "area", alert_message: "message", user: "user", status: "status", created_at: Time.now.to_datetime)
		assert @alert.valid?
	end

  test "should create invalid alert missing field 0" do
		@alert = Alert.new(emergency_type: "emergency", affected_areas: "area", alert_message: "message", user: "user", status: "status", created_at: Time.now.to_datetime)
    assert_not @alert.valid?
  end

  test "should create invalid alert missing field 1" do
		@alert = Alert.new(alert_type: "alert", affected_areas: "area", alert_message: "message", user: "user", status: "status", created_at: Time.now.to_datetime)
    assert_not @alert.valid?
  end

  test "should create invalid alert missing field 2" do
		@alert = Alert.new(alert_type: "alert", emergency_type: "emergency", alert_message: "message", user: "user", status: "status", created_at: Time.now.to_datetime)
    assert_not @alert.valid?
  end

  test "should create invalid alert missing field 3" do
		@alert = Alert.new(alert_type: "alert", emergency_type: "emergency", affected_areas: "area", user: "user", status: "status", created_at: Time.now.to_datetime)
    assert_not @alert.valid?
  end

  test "should create invalid alert missing field 4" do
		@alert = Alert.new(alert_type: "alert", emergency_type: "emergency", affected_areas: "area", alert_message: "message", status: "status", created_at: Time.now.to_datetime)
    assert_not @alert.valid?
  end

  test "should create invalid alert missing field 5" do
		@alert = Alert.new(alert_type: "alert", emergency_type: "emergency", affected_areas: "area", alert_message: "message", user: "user", created_at: Time.now.to_datetime)
		assert_not @alert.valid?
	end


end

