# Rakefile

desc "初期セットアップを実行"
task :setup do
  puts "Setting up the project..."
  # 必要なセットアップコマンドを記述
  sh "fvm flutter pub get"
  sh "fvm flutter packages upgrade"
  sh "fvm flutter doctor"
  puts "Setup complete."
end

desc "プロジェクトをクリーン"
task :clean do
  puts "Cleaning the project..."
  # クリーンアップ処理を記述
  sh "fvm flutter clean"
  puts "Clean complete."
end

desc "コードフォーマットを実行"
task :format do
  puts "Formatting the code..."
  # コード整形用コマンドを記述
  sh "fvm flutter format ."
  puts "Format complete."
end

desc "コード生成を実行"
task :gen do
  puts "Generating code..."
  # 必要なコード生成コマンドを記述
  sh "fvm flutter pub run build_runner build --delete-conflicting-outputs"
  puts "Code generation complete."
end

desc "プロジェクトを実行"
task :run do
  puts "Running the project..."
  # プロジェクトを実行
  sh "fvm flutter run"
end
