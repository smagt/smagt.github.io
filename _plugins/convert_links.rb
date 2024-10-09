# _plugins/convert_links.rb
Jekyll::Hooks.register :posts, :pre_render do |post|
  post.content = post.content.gsub(/\[([^\]]+)\]\(([^)]+)\.md\)/, '[\1](\2.html)')
end

Jekyll::Hooks.register :pages, :pre_render do |page|
  page.content = page.content.gsub(/\[([^\]]+)\]\(([^)]+)\.md\)/, '[\1](\2.html)')
end
