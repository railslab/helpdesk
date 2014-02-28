namespace :server do
  desc "Para o servidor Rails"
  task stop: :environment do
    sh %{kill -INT $(cat tmp/pids/server.pid)}
  end

  desc "Reinicia o servidor Rails"
  task restart: :environment do
    Rake::Task["server:stop"].execute
    sh %{rails server -d}
  end
end
