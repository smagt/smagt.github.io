# _plugins/convert_links.rb
Jekyll::Hooks.register :site, :after_init do |site|
  puts "Jekyll has initialized"
end


Jekyll::Hooks.register :posts, :pre_render do |post|
  puts "Processing post: #{post.path}"
  post.content = post.content.gsub(/\[([^\]]+)\]\(([^)]+)\.md\)/, '[\1](\2.html)')
end

Jekyll::Hooks.register :pages, :pre_render do |page|
  puts "Processing page: #{page.path}"
  page.content = page.content.gsub(/\[([^\]]+)\]\(([^)]+)\.md\)/, '[\1](\2.html)')
end
