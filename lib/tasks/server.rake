namespace :server do
  desc "Para o servidor Rails"
  task stop: :environment do
    sh %{kill -9 $(lsof -i :3000 -t)}
  end

  desc "Reinicia o servidor Rails"
  task restart: :environment do
    Rake::Task["server:stop"].execute
    sh %{rails server -d}
  end
end
