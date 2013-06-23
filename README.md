Not ready yet
-------------
Please keep in mind that this script is work in progress and it is not working 100% correct yet.

Symfony 2 ant macros and builds
===============================

Ant build definitions to make your life little easier. This scripts comes with 4 main targets:

* build - Prepares whole application for production
* test - Tests application
* develop - Prepares application for development
* gitRegisterHooks - Handy tool for registering basic hooks for pre-commit and post-checkout

How to add new script to execution
----------------------------------

You can alter build.xml script. To do so copy it from `vendor/mhlavac/symfony2-ant/build.xml` to your project's root.
After you copy it you can edit your version anyway you want.

What's inside?
--------------

* Composer macros - composerInstall, composerOptimize
* PHP macros - phpClearApcCache, phpUnit
* Symfony2 macros - sf2Console, sf2DatabaseCacheClear, sf2CacheWarmup, sf2CacheClear, sf2CacheClearAll, sf2RouterDumpApache
* Linux macros - rsync
* Basic build script for building your app, preparing it for development and testing your app

License
-------

This project is under MIT license, you can use it for free for any means. You can also alter it as you like ;-)

Thank you
---------

Lastly i want to thank you for reading to this point and for using my symfony2 build scripts.
If you have any ideas or if you found any bugs please report them as issues on github.
