# DEVLOG

A record of all the devs' reflections while making this project.

## 22-04-2025

"First day making this good progress the day, today is 22-04-2025, im tired, its 3 am and i have been working on this since 23:10.

"I kinda reach a point were i need to study very hard, i kinda know what to doo, make the rest of the configurations and etc, but after that im a bit lost im using very much ai to help me, and searching this on web is very hard.

"I also need to learn better how to script bash, i kinda think its funny.

"Anyways im going to sleep, this was day one, i also tried to make this to git but i failed, if somebody was here to help me out that would be so fucking good

"I know this is an ambicious project and it can pretty much change how i view linux and others may too, but i need to keep walking forward tomorrow or when i put the foot on here i'll make the rest of the customization.

"I also want this to be on a usb stick, so i need to find a way to put essential drivers on this so the really heavy and hard part can start.

"Also my pc its shit it doenst work with kvm or somethingthing like that i dont know if thats gonna be a heavy barrier. i also have two other pcs but they are so old they cant have uefi, but they can be good if i want to see if this runs on older hardware 

"Anyways have a goodnight or day i dont know" - Kilko64

## 23-04-2025

"That help came! Hi, i'm Pantuga! Kilko64 told me about this project, and i thought i could help him put it on gitHub, since i already got experience with this.

"I still use windows for most things, and i'm only planning to switch once i get my own PC, but i'm getting really interested in this idea and i think i could help with it.

"My knoledge on Linux and Bash scripts is limited, but i'm hoping to learn from this project. Besides, you never know if a project is gonna be revolutionary or not." - Pantuga

------

"its kilko talking here now, its 21:30 and i started solidifiyng the gecko manager,im making the v0.2 this is not easy, the one is on git now is the v0.1 when i """"finish"""" or make the v0.2 a bit more usefull i probably put it all there, also i might ask pantuga to make another folder, a folder for older versions he probably knows a way better to do it tought"

"also the v0.2 is coming alive and its so much better, i designed a box thing on cli for better reading, putted debug scripts and info on everything and also planned a lot, created new folders such
Fdrivers thats the folder to pré drivers that need to be preloaded in order to the user to acess wifi via the usb installation, so that drivers are not like the other one on core, also on that folder is also 
many separators like drivers for wifi, drivers for ethernet, drivers for gpu, other stuff, also im adding there another folder just for things like cmake, build, gcc, and gparted, because yes that is tools i need to have locacaly so even if i dont have wifi i could still install the necessary to have wifi"

"i maked like a roadmap for what i need to do, if you cant understand, im not helping you either, but this is more like to me to know what to do next, im putting it here"

"install the pré installed programs that i need for the machine to have wifi (network manager and drivers) let user select the system init, let user select theyr bootloader then let user select the kernel that he wants download that kernel and load sysinit that he choosed, then let him choose the package manager that he wants and download it, then aks him what drivers he want more (this time not only the pré installed ones because he as internet), ask him if he want for all computers or just for their computer, ask them if he wants  to customize the drivers he doenloads and maintans then do the rest of the things that are not so problematic, clean the pré installed shit and programs ask user what to maintain, and when asking making separators like drivers, programs that were used on the installation, and etc, even asking if he wants the default wallpaper for this distro,  and if he wants to delete the old kernel, if he wants then reboot to the second kernel while on the installation when it starts up again and then remove the old kernel"

"also i need to start thinking how do i make the script to create the /home / swap and other configs such as efi partition, im probably doing more on a few time but im going to give it a pause, at 1 am i continue, and yes im better at scripting with bash, i also had a bit difficultyes on finding the stuff and drivers i need to put on fdriver i need to do a lot of wget"

"another thing to have in mind is if im doing a reboot the older core scripts may not work, i might literaly just create them one by one by hand, and another thing, the v0.2 have a lot of comments and the comments have a portuguese version and english one so everybody can modify it, the code inst installing everything yet but its already with 90lines and it doenst use any other scripts on core, oh and right i already maked a new script for storing things to remove later, like i want the user to have full control so it needs that so the system dont comes with packages from the installation im still letting the user decide what packages they want though, and to finish this devlog im also letting you know im probably changing how de configs work, i still need a lot to think, costumization can get to a rabit hole" 

"well thats all for now, im going to rest a bit now all that thinking and scripting got me tired, i come back at 1 am or sooner, now byeeee!" - Kilko64

## 24-04-2025

"its kilko again, imgoing to start working at this in a bit, its now 0:25 and im going to start this at 1 am, just wanted to say an honorable mention to the user Cridr4edri"
"that user called cridr4edri helped me on the grammar errors and catching spelling errors on the git readme and etc, without his help i wouldn't even cared for the errors so thank you cridr4edri for your good english" - Kilko64

------

"hi kilko here its 2:11 am im tired and im going to end early because i have sleeped at 4 am yesterday and the other day too so i need to get some good hours of sleep, i have done some progress though"

"ok first thing is, i setted the essential debs on GeckoManager v0.2 so now the essential packages are on the Fdriver folder and i dont need wifi to install it, i may have changed a bit the Fdriver folder, i putted all on the subfolder Networkingapps so all the programs are there, but theres a problem, i counld put there the depencides too so its something i need to work, need to put the dependecies there too"

"second thing, maked the script to install those .deb i have not tested yet because i dont have a virtual machine to text it but on teory it should work, of course if i trie its probablu going to give me some error, but fuck it, i work on the dependecies and kvm tomorrow, the script can install that and put the programs on the Tmpp array basicaly the array that tells what programs are going nuke when this installs and the first reboot ocurs"

"also now i programed the postinstall_cleanup_script.sh what it does? literaly what the names says, because pantuga has not reached here yet to put the things i worked now on git you cant see what i am talking, i hope he doenst get confused when i show all what i did, anyway"

"i also maked a new folder called logs, it has the logs of the temporary packages of the installer basicaly tells mw what is on the temporary packages or the tmpp array and that was pretty much it for today very very very early morning, i need to rest my head, i probably will set a kvm tomorrow, now im going to make a txt for pantuga so he can see what to do, oh right almost forgot"

"i also put on the core folder all the things if v0.1 on a folder so it dont get mixed anyway now im done"

"now have a good night, or day i really dont care" - Kilko64

------

"Pantuga here, i updated all the files for the version 0.2, and added a new folder for the old versions, i think it's more organised this way.

"i need to help Kilko troubleshoot git so he doesn't depend on me to upload the project here, and i'm also hoping to start contributing to the code sometime.

"All the changes made in this newer version were explained above, so i guess there isn't anything else i need to document here." - Pantuga

------

"Kilko here its currently 22:55 and i have some good and bad news, lets hear the bad news, currently on the project i cant test the script so for the next days i will pretty much work on setting a KVM and setting a iso, why that?"
"well im now on the project needing to test it, i still havent tested the v0.2, because i need a kvm for that so i can actually see if it installes all the essential drivers correctly but heres the thing how do i put this on a kvm? for that i need a iso for the project, for that i need to finaly build this, and that means i also finally need to choose the base for this distro, i probably make gecko manager 2 yes a second where its lfs based, but for now this project is going to be debian based, more specificaly, debian testing based and now im working on building the iso, so thats the bad news, but we still got one good new, and its that cridr4edri is going to enter this project as a contributier his role for now? probably learn bash to help me and let this github page a bit better" - Kilko64

## 25-04-2025

00:17
So, I am cridr4edri I joined mostly because they didn't really care about grammar and spelling mistakes, my writing isn't flawless but at least I check to see if everything is correct ESPECIALLY IF IT'S FOR README though my knowledge(yes, pantuga it has a W) about Linux and Bash is also limited, I have dual boot but I don't really use Linux that much. However I am willing to learn Bash to help kilko.

-------

"so kilko here, its now 0:45 and i have setted up an KVM and i can run ISOs on my computer now, one step closer to the objective, also i have been studiyng about how do i create the Iso files i am not sure about how it works so dont expect me to tomorrow have the folders for isos creations"

"you probably seen the text above this and yes cridr4edri the same i said thank you is now on the project as they say, more better, anyway i had been learning abou how to create the folders for the iso and i probably needing to create more folders like a chroot filesystem and i would also need to create a new folder called iso on that folder its gonna have boot/ and install/ and other files, in boot im probably adding grub/ isolinux/ and in isolinux/ im adding isolinux.cfg where its going to have the congs for the bootloader, do not confuse yourslef thought this is not the file system of the thing you install to your pc, this is the filesystem so it can run the geckomanager, now getting back to the folder iso i also mentioned a folder called install/ on that is going to have the geckomanager.sh the root script i have been working on, i supose this is the correct way to how to do it, im not sure, this is probably one of the hardest parts of the project because i cant test it, but im sure as time go on this going to turn into an hobby and i hope this all worksout, but i cant be stopped i need to continue learning reading and smashing my head into the keyboard, oh and i need to program the grub and configuration files on this too"

"i hope i can get cridr4edri into this too, he can learn a bunch, also both Pantuga and cridr4edri currently are using windows as default, because im not familiar with vscode its gonna be pantuga helping cridr4edri on using the vscode and me actually helping cridr4edri learn about bash, im sure he can use this project as a great way to learn about it too, but im not sure if he can get certain things done withou the knowleddge i have about linux, well im sure time going to help him out"

"anyway when i get done creating the iso folders and all its need and about crhoot folder too that i really dont knowed about, im going to be calling it probably Gecko Manager v0.3, it can take a while now even more because this is a whole new thing i need to do and know and i really was caught on suprise, and i have to split my time on this, helping crdr4edri learning, my life, and also a bit of playtime"

"well thats all, also im going to make probably a set of days where i work on this or not, i think i have this in mind"

"monday i rest its a day off this project, tuesday i work on the project and i stay late at night to work, on wednesday i also work and stay late at night, thursday i work on this and stay up at night, but i go to rest a bit earlier, friday is day off (ocasionaly working on the afternoons), saturday  i rest (Normaly researching what i have to do nextjust planning), and on sunday i rest like a day off not doing nothing, im probably going to do this so dont expect me much on certain days well thats all"

"have a good night or not, fuck you, im kidding have a good night byee" - Kilko64
