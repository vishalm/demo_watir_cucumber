Before ('@watir')do
   launch_browser
end


After ('@watir') do
   quit_browser
end