require 'sinatra'

post '/message' do
  number = params['From']
  body = params['Body']

  content_type 'text/xml'
    "<Response>
      <Message>
        Hello #{number}. You said: #{body}
      </Message>
    </Response>"
end
