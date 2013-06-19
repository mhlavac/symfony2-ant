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

There two ways how to add your script into build definitions. First one is easy, but it requires you
to alter the deployment script. This means that it will be harder to update deployment script with this
repository and this will make it harder for you to update your app to newer version.

Second way is to register your scripts in `deploy` directory. You can add any scripts here and they will be executed
at the end of build sequence. It's best practice to prefix these files with numbers, this way you can define script orders.

example of deploy directory:

```
deploy/
    build/
        00-prepare_db.sh
        10-run_selenium_tests.sh
        20-run_fitnesse_tests.sh
```

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
