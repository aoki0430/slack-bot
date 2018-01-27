require 'slack-ruby-client'

  Slack.configure do |conf|
    # 先ほど控えておいたAPI Tokenをセット
    conf.token = 'xoxp-306031066326-305175088802-304655691217-1c7608e975ff03bf9a9b6fdcc8292423'
  end

  # RTM Clientのインスタンスを生成
  client = Slack::RealTime::Client.new

  # hello eventを受け取った時の処理
  client.on :hello do
    puts 'connected!'
  end

  # message eventを受け取った時の処理
  client.on :message do |data|
    if data['attachments'][0]['text'].include?('@aoki0430')
      client.message channel: data['channel'], text:'<@U8Z552LPL>'
    end

    if data['attachments'][0]['text'].include?('@chagara')
      client.message channel: data['channel'], text:'<@chagara>'
    end

    # if data['attachments'][0]['text'].include?('@nakarin')
    #   client.message channel: data['channel'], text:'<@nakarin>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@gaku2n')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@mi2yay')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@yoshixj')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@29rou')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@haliver')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@ityc')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end
    #
    # if data['attachments'][0]['text'].include?('@ryousuke.inoue')
    #   client.message channel: data['channel'], text:'<@U8Z552LPL>'
    # end

  end

  # Slackに接続
  client.start!
