#!/usr/bin/env ruby

tips = [
  'Tip 1 │  Installing Vim 8',
  'Tip 2 │  Switching to Neovim',
  'Tip 3 │  Enabling Python Support in Neovim',
  'Tip 4 │  Understanding Scripts, Plugins, and Packages',
  'Tip 5 │  Installing Plugins to Your Package',
  'Tip 6 │  Managing Plugins with minpac',
  'Tip 7 │  Finding Files Using Fuzzy Path Matching',
  'Tip 8 │  Finding Files Semantically',
  'Tip 9 │  Jumping to an Alternate File',
  'Tip 10 │  Running a Build and Navigating Failures',
  'Tip 11 │  Switching Compilers',
  'Tip 12 │  Linting the Current File',
  'Tip 13 │  Searching Files with Grep-Alikes',
  'Tip 14 │  Running Tests and Browsing Failures',
  'Tip 15 │  Grokking Terminal Mode',
  'Tip 16 │  Running Programs in a Terminal Buffer',
  'Tip 17 │  Managing Windows That Contain Terminal Buffers',
  'Tip 18 │  Using Normal Mode Commands in a Terminal Buffer',
  'Tip 19 │  Sending Commands to a Terminal Buffer',
  'Tip 20 │  Applying Customizations to Your Shell in a Terminal Buffer',
  'Tip 21 │  Avoiding Nested Neovim Instances',
  'Tip 22 │  Using an Existing nvim Instance as the Preferred Editor',
  'Tip 23 │  Saving and Restoring Sessions',
  'Tip 24 │  Making Undo Persist Between Sessions',
  'Tip 25 │  Restarting Terminal Processes When Resuming a Session',
  'Tip 26 │  Using Autocommands to Respond to Events',
  'Tip 27 │  Respecting Project Conventions',
  'Tip 28 │  Setting Buffer-Local Configuration Per Project'
]

puts ARGV[0] ? tips[ARGV[0].to_i] : tips.sample
