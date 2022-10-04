url tuto: https://gist.github.com/ccabanero/e792492221c5347a4d4f
> pod lib create YourPodName
(Podspec MetaData)
Edit config on YourPodName.podspec 

> pod lib lint YourPodName.podspec
At each update use « pod lib lint »

> Create git repo
git add . 
git commit -m 'Initial commit'
git remote add origin https://github.com/ccabanero/yourpodname.git
git push -u origin master
git push --set-upstream origin master

> Add a custom code for the pod

> pod lib lint YourPodName.podspec

> Commit and push code to origin master

> git tag 1.0.0
> git push origin —tags

> pod spec lint YourPodName.podspec

// To use on Podfile:
pod 'YourPodName', :git => 'https://github.com/maaref1/MyFirstPod.git’

pod install
