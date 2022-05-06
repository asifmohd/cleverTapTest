## Description

This repo is a sample app which demonstrates a crash in Clevertap SDK when it's shared instance is accessed across multiple threads at app launch.

## Steps to recreate the crash:

Steps to reproduce the behaviour:
1. Clone this repository
2. Run pod install to install the latest ClevertapSDK
3. Build and run the app on a simulator
4. Across 5 concsecutive launches, you should see a crash at least once, sometimes in all 5 launches
5. Increase/decrease the number of accesses to `Clevertap.sharedInstance()` in appDidFinishLaunching to increase/decrease the chances of a crash occurring respectively.