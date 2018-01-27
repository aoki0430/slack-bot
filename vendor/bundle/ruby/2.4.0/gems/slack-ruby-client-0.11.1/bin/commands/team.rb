# This file was auto-generated by lib/tasks/web.rake

desc 'Team methods.'
command 'team' do |g|
  g.desc 'Gets the access logs for the current team.'
  g.long_desc %( Gets the access logs for the current team. )
  g.command 'accessLogs' do |c|
    c.flag 'before', desc: 'End of time range of logs to include in results (inclusive).'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.team_accessLogs(options))
    end
  end

  g.desc 'Gets billable users information for the current team.'
  g.long_desc %( Gets billable users information for the current team. )
  g.command 'billableInfo' do |c|
    c.flag 'user', desc: 'A user to retrieve the billable information for. Defaults to all users.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.team_billableInfo(options))
    end
  end

  g.desc 'Gets information about the current team.'
  g.long_desc %( Gets information about the current team. )
  g.command 'info' do |c|
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.team_info(options))
    end
  end

  g.desc 'Gets the integration logs for the current team.'
  g.long_desc %( Gets the integration logs for the current team. )
  g.command 'integrationLogs' do |c|
    c.flag 'app_id', desc: 'Filter logs to this Slack app. Defaults to all logs.'
    c.flag 'change_type', desc: 'Filter logs with this change type. Defaults to all logs.'
    c.flag 'service_id', desc: 'Filter logs to this service. Defaults to all logs.'
    c.flag 'user', desc: "Filter logs generated by this user's actions. Defaults to all logs."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.team_integrationLogs(options))
    end
  end
end
