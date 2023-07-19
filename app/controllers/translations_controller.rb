class TranslationsController < ApplicationController
  def translation_form
    require "google/cloud/translate"

    translate = Google::Cloud::Translate.new({ :version => :v2 })

    @languages = translate.languages "en"

    render({ :template => "translation_templates/translation_form" })
  end

  def translate
    text          = params.fetch("body")
    language_code = params.fetch("lang")

    require "google/cloud/translate"

    translate   = Google::Cloud::Translate.new({ :version => :v2 })
    @translation = translate.translate(text, :to => language_code)

    if params[:telephone].present?
      # Retrieve your credentials from secure storage
      twilio_sid = ENV.fetch("TWILIO_ACCOUNT_SID")
      twilio_token = ENV.fetch("TWILIO_AUTH_TOKEN")
      twilio_sending_number = ENV.fetch("TWILIO_SENDING_PHONE_NUMBER")

      # Create an instance of the Twilio Client and authenticate with your API key
      twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token)

      # Craft your SMS as a Hash with three keys
      sms_parameters = {
        :from => twilio_sending_number,
        :to => params[:telephone], # Put your own phone number here if you want to see it in action
        :body => @translation
      }

      # Send your SMS!
      twilio_client.api.account.messages.create(sms_parameters)
    end

    render({ :template => "translation_templates/translate_results" })
  end
end
