require 'slack-ruby-client'

  Slack.configure do |conf|
    # 先ほど控えておいたAPI Tokenをセット
    conf.token = ENV['SLACK_API_TOKEN']
  end

  # RTM Clientのインスタンスを生成
  client = Slack::RealTime::Client.new

  # hello eventを受け取った時の処理
  client.on :hello do
    puts 'connected!'
  end

  # message eventを受け取った時の処理
  client.on :message do |data|
    if data['attachments'][0]['text'].include?('@githubname')
      client.message channel: data['channel'], text:'<@SlackID>'
    end

  end

  # Slackに接続
  client.start!
