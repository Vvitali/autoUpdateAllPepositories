# package.json auto-updater

How to use
```bash
npm install;
npm run step1;
# wait for some time, as 
# step 1 is asynchronous step and will be forking tasks in order to speed up process, 
# but it will cause a load on your CPU and HDD\SSD. 
# In exchange if you have many repositories - you will get them very fast
npm run step2;
#Step 2 is also asynchronous and will run ncu -i for each repository, after it will run git add, commit, push, and also removes package-lock.json
# CHANGE THE SCRIPT IF YOU DON'T WANT PACKAGE-LOCK.JSON TO BE REMOVED
```
