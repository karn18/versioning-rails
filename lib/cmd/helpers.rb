def read_version_file(path, &block)
  content = File.binread(path)
  block.call(content)
  File.open(path, "wb") { |file| file.write(content) }
end
