# frozen_string_literal: true

require_relative "seminardesk_ics/version"

require 'json'
require 'net/http'

require 'icalendar'

module SeminardeskICS
  class Error < StandardError; end

  class API
    def initialize url
      @uri = URI(url)
    end
    def fetch_json
      response = Net::HTTP.get @uri
      JSON.parse(response, symbolize_names: true)
    end

    def self.fetch_json url
      new(url).fetch_json
    end
  end

  class Converter
    def self.to_icalendar seminardesk_json_response
      dates = seminardesk_json_response[:dates]
      
      calendar = Icalendar::Calendar.new
      
      dates.each do |date|
        event = Icalendar::Event.new
        event.dtstart = Time.at date[:beginDate]/1000
        event.dtend   = Time.at date[:endDate]/1000
        event.summary = date[:title].first[:value]
        calendar.add_event event
      end
      
      calendar.publish
      calendar
    end
  end
end
