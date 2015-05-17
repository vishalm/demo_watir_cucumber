Before ('@watir')do
   launch_browser
end


After ('@watir') do
   quit_browser
end

Before ('@remote_watir')do
   launch_remote_browser
end


After ('@remote_watir') do
   quit_browser
end


