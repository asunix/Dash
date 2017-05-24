cheatsheet do
  title 'Homebrew'
  docset_file_name 'brew'
  keyword 'brew'
  source_url 'https://github.com/asunix'

  category do
    id 'Problem determination'

    entry do
      name 'Tells us about the health and status of our installation.'
      command 'brew doctor'
    end
  end

  category do
    id 'Install/Uninstall command'

    entry do
      name 'Install a formula.'
      command 'brew install [Formula]'
    end

    entry do
      name 'Uninstall formula and all their older versions.'
      command 'brew uninstall --force [Formula]'
    end
    
    entry do
      name 'Unlink formula from /usr/local.'
      command 'brew unlink [Formula]'
    end
    
    entry do
      name 'Link a formula to /usr/local.'
      command 'brew link [Formula]'
    end 
    
    entry do
      name 'Change versions of a formula.'
      command 'brew switch [Formula] <version>'
    end
  end
  
  category do
    id 'Search/Display informations command'
    
    entry do
      name 'To list software you currently have installed.'
      command 'brew list'
    end
    
    entry do
      name 'To list software you currently have installed with version numbers, use.'
      command 'brew list --version'
    end
    
    entry do
      name 'Search formula in to brew repository, support text and regex.'
      command 'brew search [Text/Regex]'
    end
    
    entry do
      name 'List the formula information.'
      command 'brew info [Formula]'
    end
    
    entry do
      name 'Open formula homepage.'
      command 'brew home [Formula]'
    end
  end 
  
  category do
    id 'Dependency command'

    entry do
      name 'See any app that you no longer need and want to get rid of them? Check the dependencies for all installed formulae.'
      command 'brew deps --installed'
    end
    
    entry do
      name 'For even more detailed picture, show the dependencies for all installed formulae as a tree.'
      command 'brew deps --installed --tree'
    end
    
    entry do
      name 'As a final precaution before removing a formula, see what other installed formulae use it as a dependency.'
      command 'brew uses --installed [Formula]'
    end
    
    entry do
      name 'To see just the software, which is not a dependency of another.'
      command 'brew leaves'
    end
  end 
  
  category do
    id 'Maintenance commands'
    
    entry do
      name 'Update the formulas and brew itself.'
      command 'brew update'
    end

    entry do
      name 'Updates all applications.'
      command 'brew upgrade'
    end
    
    entry do
      name 'What’s due for upgrades?'
      command 'brew outdated'
    end
    
    entry do
      name 'After updating the brew, check which formulae have an updated version available, display detailed version information to see if you have more than one older version laying around.'
      command 'brew outdated --verbose'
    end
    
    entry do
      name 'Show what will be removed by cleanup command, but do not actually remove anything.'
      command 'brew cleanup -ns'
    end
    
    entry do
      name 'Clean the “Cellar” removing any older versions of installed formulae and clearing old downloads from the Homebrew download-cache. Additionally, scrub the cache, removing downloads for even the latest versions of formula, which are downloaded, but not installed.'
      command 'brew cleanup -s'
    end
    
    entry do
      name 'Stop formula from being updated.'
      command 'brew pin [Formula]'
    end

    entry do
      name 'Allow that formulae to update again.'
      command 'brew unpin [Formula]'
    end
  end
  
  category do
    id 'Service command'

    entry do
      name 'View all system services configured/managed by Homebrew (e.g. cassandra, mysql, nexus, etc.).'
      command 'brew services list'
    end
    
    entry do 
      name 'Start a service.'
      command 'brew services start [Formula]'
    end
  end
  
  category do
    id 'Formula command'
    
    entry do
      name 'Edit this formula.'
      command 'brew edit [Formula]'
    end
  end
  
  category do
    id 'General command'
    
    entry do
      name 'To view where homebrew save all downloaded stuff.'
      command 'brew --cache'
    end 
    
    entry do
      name 'Lists the currently tapped repositories.'
      command 'brew tap'
    end 
  end 
end
