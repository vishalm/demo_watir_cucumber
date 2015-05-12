# Intro

Basic Watir Webdriver Cucumber and Page Object Design Pattern implementation.

Build Status: localhost

# Requirements

* Bundle and Ruby with Devkit on Windows

# Installation and Usage

1. Clone this repository from Github


# Windows

1. Install Ruby 1.9
2. In root directory, run 'bundle install'
3. Then run 'rake'

#Jenkins Setting
Plugin :
    HTML Publisher plugin
Build
1. Execute Windows batch command :
    @REM File to be deleted
    SET FileToDelete="C:\..\demo_watir_cucumber\report\features_report.html"
    IF EXIST %FileToDelete% del /F %FileToDelete%

2. Execute Windows batch command :
    set PATH=C:\Ruby193\bin
    cd C:\..\demo_watir_cucumber
    bundle install

3. Execute Windows batch command :
     set PATH=C:\Ruby193\bin
     cd C:\..\demo_watir_cucumber
     cucumber --no-source --format pretty --format html --out=report\features_report.html

4.  Execute Windows batch command :
    set PATH=C:\Ruby193\bin
    cd C:\..\demo_watir_cucumber
    cucumber --no-source --format pretty --format html --out=report\features_report.html

5. Post-build Actions
    Publish HTML reports
    HTML directory to archive : C:\..\demo_watir_cucumber\report
    Index page[s] : features_report.html
    Report title: Cucumber Report
