# BasicCucumberExampleSquare

## Installing Programs MacOS

Install **Apple CLT** (Command Line Tools) for Xcode 11.2 from their website - https://developer.apple.com/download/more/

You may have to install the CLT through the MacOS App Store along with Xcode

Next install **Homebrew** to make installing additional programs easier - https://brew.sh/

Install **Git** using Homebrew if you haven't already, use the following command 

```
brew install git
```

Validate it installed correctly

```
git --version
git version 2.19.0
```

Then use these 2 links to generate and setup an SSH key for git along with your github account

https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account


## Getting The Project Started

Make a new folder and download the code from Github

```
mkdir new_folder
cd new_folder
git clone https://github.com/bbc/smp-tux
Cloning into 'new_folder'...
Username for 'https://github.com': dalyw01
Password for 'https://dalyw01@github.com':
cd smp-tux
git init
```

Install **Selenium** using Homebrew

```
brew install selenium-server-standalone
```

Install **Chromedriver** for Google Chrome using Homebrew

```
brew cask install chromedriver
```

Install **Geckodriver** for Firefox using Homebrew

```
brew install geckodriver
```

Install **RVM** (Ruby Version Manager) to manage Ruby versions (You might need to brew install gnupg beforehand)

```
\curl -sSL https://get.rvm.io | bash
```

Then to set RVM up run

```
source /Users/dalyw01/.rvm/scripts/rvm
```

Install the required version of Ruby which is currently 2.5.3

```
rvm install 2.5.3
```

Check the current version being used is the one you downloaded

```
rvm list
 * ruby-2.3.1 [ x86_64 ]
   ruby-2.4.1 [ x86_64 ]
=> ruby-2.5.3 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```

## Configuring Ruby Gems

The Gemfile file contains a list of all gems we need included for this project

Look at Gemfile in Cucumber to see what's needed, it should look something like this

```
source 'https://rubygems.org'

gem 'cucumber'
gem 'capybara'
gem 'rspec'
gem 'selenium-webdriver'
gem 'touch_action'
```

You then install each gem seperatley with "gem install X" from https://rubygems.org

Here is how you can install each individual gem

```
gem install cucumber
gem install capybara
gem install rspec
gem install selenium-webdriver
gem install touch_action
```

Lets install the bundler gem

```
gem install bundler
```

Let's then run a bundle install

```
bundle install
```

Running bundle install will look at the **Gemfile.lock** and install the exact same versions of every gem, rather than just looking at **Gemfile** and installing the most recent versions

If Gemfile.lock IS NOT present then Bundler will generate it when we run a script with a list of compatible gems

Once installed, this is an example of how it will look:

```
GEM
  remote: https://rubygems.org/
  specs:
    addressable (2.7.0)
      public_suffix (>= 2.0.2, < 5.0)
    backports (3.15.0)
    builder (3.2.3)
    capybara (3.29.0)
      addressable
      mini_mime (>= 0.1.3)
      nokogiri (~> 1.8)
      rack (>= 1.6.0)
      rack-test (>= 0.6.3)
      regexp_parser (~> 1.5)
      xpath (~> 3.2)

etc ...

PLATFORMS
  ruby

DEPENDENCIES
  capybara
  chunky_png
  cucumber
  image_size
  rspec
  selenium-webdriver
  touch_action

BUNDLED WITH
   2.0.1

```

## Running Tests

Some basic commands and knowledge to run tests in this project

To run a single script

```
cucumber features/core_features/core_functionality.feature
```

To run a single test from a single script

```
cucumber features/core_features/core_functionality.feature:37
```

To run all scripts

```
cucumber features/
```

To run all feature files of a particular folder with Chrome

```
cucumber features/core_features/ BROWSER=chrome
```

To run through all feature files with Firefox

```
cucumber features/ BROWSER=firefox
```

To run through a particular scenario in a table with Firefox

```
cucumber features/core_functionality.feature:54 BROWSER=firefox
```

To run a particular test point in a feature file

``` 
cucumber features/cp_watch_more.feature -t @4
```

To run all tests except for anything tagged @ads

```
cucumber features/ --tags ~@ads BROWSER=chrome
```
