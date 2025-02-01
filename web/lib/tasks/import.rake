desc "import stuff"
namespace :import do
  task :content, [:capture_id, :path] => [:environment] do |_task, args|
    import = JSON.parse(File.read(args.path))
    cap = Capture.find(args.capture_id)
    puts "adding parts to #{cap.title}|"
    import.each do |interval|
      cap.capture_parts.create! text: interval['text'], timestamp: interval['timestamp'], embeddings: interval[:embedding]
    end
    puts "added parts to #{cap.title}|"
  end
end
