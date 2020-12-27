# package.json auto-updater

## How to use:

When you run it the script will print 'DONE' and you will see your console again, ut wait for some time, as step 1 is asynchronous step and it forked tasks in order to speed up the process, and will direct output of forked processes to your console

This approaches will cause load on your CPU and HDD\SSD, but in exchange if you have many repositories - you will get them very fast

```bash
npm install;
npm run step1;
```

Step 2 is also asynchronous and will run ncu -i for each repository, after it will run git add, commit, push, and also removes package-lock.json

**CHANGE [updatePackagesAndCommit.sh](https://github.com/Vvitali/autoUpdateAllPepositories/blob/main/updatePackagesAndCommit.sh) IF YOU DON'T WANT PACKAGE-LOCK.JSON TO BE REMOVED**

```bash
npm run step2;
```
