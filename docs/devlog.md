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

## 26-04-2025

"the day, 26, the hour 18:23 who is talking kilko, so i had been researching about making the iso, and its a lot cleared and simpler now, i need to set the chroot folder, so its like a fake linux system that only runs on the usb, and there i will need to install all the things i need for the installation, so for now, the folder Fdriver is not going to be on use when i build the v0.3, other things i want to mention im doing a lot of research and not necessarily working directily on the version, today i will make the research and then probably tuesday i will start executing what i have learned, and im just really writing on here today because it can look like the project is stopped but its really not is just me who need to make more research and shit like that before starting directily coding again, if i had someone like crdr4edri if he knowed how to code and things about linux it would be a great help but for now is just me, the wiki, and the git, anyway have a good day, byeeeeeeee" - Kilko64

## 29-4-2025

"i came back!,its now 19:24 and it happened a lot of shit while i was learning this about isos, things like, a blackout on like all of europe and my country being one of the most affected, and much more, but anyways, im now finally making the iso, i got the hang of it, i know how it works and now im doing tests with it, i just have a little problem"

"i dont know why but everytime i enter the chroot of the iso my system literaly says, "nah mate, fuck off, dont want today, try later" what do i mean is everytime i enter chroot and exit, my system breaks and then i cant use commands on terminal like umount or mount, then when i close the terminal and open it again it says an error of bash and then i cant use the terminal, some of my programs fuck over and them when i do log out, and enter again it just enters the infinite loop of death (loop of logouts) i put the password and then when it loads it just closes again and comes to the loginmanager, then i try loading my DE lxqt and see if its problem of Sway but no, the problem is the same, and then when i log out of lxqt it now also makes the loop of death and logins, then im forced to reboot and then everything is ok like "nah mate dont wanna i dont like you chrooting, but if you reboot i might work again" until now thats been hapening everytime i want to do something on chroot and exit i have to reboot my pc and turn my life to a living hell, anyway im doing some progress if someone could help me work around this or solve the problem i would love" - Kilko64

## 30-4-2025

"Hey kilko here! have you thinked about life? i know its a silly question and im making a reference to vsauce, mostly because i maked a 2 hours trobleshooting (its 2:57 am btw) on this for why chrooting breaks my system and i still have no awnsers, im using debian bookworm, with tilix (idk if this affects probably not because all the other terminals emulators shit themselfs too) im using fish, and im with sway and lxqt, i really dont know why this is happening, i trie trie trie trie, give a punch at my monitor, try try try try again failing everyfucking time, i tried changing my kernel i usualy use liquorix and then i tried go with the normal one, and still nothing, im going insane, anyway until i solve this problem, im kinda ducked, im will probably be a duck for the nexts days because i cant test many times the iso i create, also while i was tryng to make the tests of the isos before really starting fusing an iso with the installer i still had problems like, i trie to make that autologin and dont work, i tring to connect wifi and failing, also tring to login and failing too, and you can imagine that everytime i fail i need to reboot because of this shit problem i have with the chroot, and if im going to work quitiing and entering crhoot a lot just to make a change or something like using apt to install something to the iso, or even putting there the installer you can see that im pretty much fucked, how am i going to do it if i have to reboot everysingle second?????, about the first question i made on this thought, yes i have thinked about life, and im pretty much jumping off a cliff just because this problem with the chroot is putting me insane, i can even write the error code i got on tilix just you wait" - Kilko64

"this is the error that it gives me "Ocorreu um erro inesperado: Failed to open PTY: dispositivo inexistente" for non portuguese speakers this is what it means on english "ocurred an unexpected error: failed to open pty: device non-existent" what it means? thats a very good question, and now i need to reboot again and i was almost finish the Test iso so i could finally move on and make it official AAAAAAAAAAAAAAAA" - Kilko64

"and what makes me more angry about this is that it looks like a simple error, and the only forum i find someone literaly with the same error and the same problem and process to have the problem identical to me, theres no awnser, just look it, heres the link for the forum https://ubuntuforums.org/showthread.php?t=2499028, the only shit that tells me is that exists this command mknod and i can create devices, but now i ask you, do i look like i know how to use it? for what i learn i need to put the pid, how the duck am i going to know the pid of PTY i dont even know what PTY stands for, goddamnit, and it certainly looks like this is easy to correct or get around, but how my fuckinf duckm do i have the patience for this? well i must have or nothing is done, anyway, its almost four am, and im going to sleep, i need to, im not dracula, even thought i now certainly look like one on the middle of the dark with only my monitors light, if a demon was here with me he probably maked some prayers just for looking at my face, i probably just need to relax a bit and then tomorrow i find a solution im sure this inst to hard, i mean im not sure, but you get what i mean, anyway have a goodnight, and now byeeeee!" - Kilko64

## 2-05-2025

"its kilko here its now 13:16, and yes i know, i have been gone for some days, two to be more especific, and im going to tell why here, first thing, i got lazy, not gonna lie, making that scripts solving bugs tirelles on the night it had give me an bad image of this and thats why i got lazy, i mean its not like i dont hate doing this, i love working for the project and do all that but its just i worked a bunch and now i see as a bad thing, its like doing the same for too long and it stops being so excited, second i also found some games on steam, and i loved those games so much that fuck it who am i going to lie about? i got lazy and got hooked by those games, i mean i buyed haste and carryon and even if my pc is so bad that i had to tecnicaly play haste with an 600x480 resulution with all on low and a mod to help fps, and everytime i got on a loading screen the game crashes, and also tecnicaly my gpu not being the minimum to play the game, i still got hooked and i got nine hours of playtime, cant you really blame me? that shit good as fuck, and i actually am a bit suprising about my pc running that because if you dont know, my gpu is an integrated and is knows by being the worst integrated gpu of its line and being compared to 20 year old gpus while this being from 2019, if you want to suffer the name of the gpu is intel iris plus icelake G1 anyway, its not just bad news and me swearing about my pc and myself i have on big thing i got working even if its not directly connected to the project"

"i have a friend called ani, and this friend wants to be part of the project helping with the linux  stuff and bash, but he is not like cridr4edri who helped on the text, he doenst do that and even if he does i already have cridr4edri for that so i thinked, why adding him? he still doenst know that much stuff, so i havent add him, but while i was not working on this he asked for my help to make a dualboot and learn bash, being the good friend i am there i go, teatch a litle motherfucker that his spam attenticion is the same of a goldfish, even though he breaked the fedora two times and i got him on mint after hours, and even more hours configuring flatpak and other things on mint so he doenst fuck up the things also downloading fish tilix and micro for text edition, i finaly got him on the basics, and he already learning bash already knowing the basic stuff about scripting, and yes ani, if you are reading this then lets make a deal you fucking piece of shit that got me almost 5 hours already"

"the deal is, if you do this task without much help of me, i let you work on this, since you are basic at this this is important so i can be confident enought to do things, the task is not simple but if you do its enought"

"i want you ani, to do a word document, that word document, explains what is bash, what is chroot, hwow the unix filesystem on root works, know how to make partitions and what is essential, and what is swap, know waht gtk3 apps are or toolkit apps are, what is kernel, what is de, and wm, what is a distro, what is linux and its kernel, what is a system init, what is a package manager, what is a open source program, what is git, what is a .deb flatpak and snap package, what is debian, and make all that with a bunch of examples, the second this i want you to do, is a bit more complicated, i want you to script two things in bash, one thing is a program that interacts with the systemd and thats all, the other program in bash is a program that uses both echo comments functions if and elses, cases and variables when thats done we move to the third thing, install a full distro like debian, on the minimal mode with just the netist iso and without internet, and install it on a usb and make it so it only runs directly on the usb, just like linux tails and make that installation with just the terminal you have after installing it, when thats done i want you to put the two scripts on the word document, and send it to me, i know its sounds hard but its basicaly a few goal steps i made to reach were i am now, so i just want you to do that that will probably cost a month or some weeks researching and making it, and i only want that word document to be understandable for the normal reader and thats all"

"now ani if you are up with that you better start by the order i gave you like first research and explain all i mention on the word that will give you an view and then put a bunch of examples then move to the second thing and make the bash scripts and then finaly move to the installation of debian minimal on a usb to run it localy there"

"also cridr4edri, if you read this, you better start doing it too if you want to do the scripting too, but since you already know more linux than ani you probably fine"

"now good luck and yes im going to hopely if i dont get hooked today work on the project, on this case working on solving the chroot error or finding any alternarives like using another of my old and shitty pcs for that, now byeeeeee" - kilko64

## 5-05-2025

"hi its kilko its now 16:00 and i finally have restored my stamina to continue the project, hoppefully finally trying to solve this fucking Chroot problem once and for all, il try to work on this, hopefully not skipping days because im lazy, i might work on the chroot problem today or tomorrow, also im helping ani on this, explaining some things, i hope i could call him just to work on this and help him learn, anyway, Ani if you are reading this, just call me to fucking help you, also i might install linux on a old laptop of cridr4edri and help him join the code too, so yes this project is not stopped at all its just me who got a few days of because of lazyness or tiredness and now im going to work on this again, to be sincere i probably stoped because the problem of chroot its literaly an hell having to reboot the pc all time i enter chroot to edit something on the iso, anyway its just a reminder that im working on this and this inst actually stoped im always thinking on some solution or on helping ani or cridr4edri to enter the code" - Kilko64

## 6-05-2025

"hi kilko here its now 14:27, im doing the iso stuff, i still have the error and i cant solve it, so i have to live with it, anyway, i am creating the iso, and im having some trouble, like setting this to autologin so even if i only have a root password on the iso it doenst tell me to login, im having some trouble with that, this is the worst part of all the project, i would probably need to remake this a lot, like try, failed, try, failed, its working, try again and see if i can put it to work again, and do that a bunch of times until the iso is ok and good to go, i also needed to make some changes to the main script because it needs to have the flag so grub can see that on the options i made and run the installer right after i select the option"

"another thing i have done this one yesterday is that i helped ani a little with the linux stuff he is now learning what the folders on root and unix systems does, i think he has hope to join the code, but he still has a lot to learn"

"another thing about the iso creation is that it takes a bunch of times to update the iso of my changes, or atleast is what i think, because this is certainly something i do know little to not knowing att all because of that i dont know about many commands about this and the process to how i do it, that turns this slow, because i dont know what im doing, turns this into an trial and error, and until i can make this easy enought and compreend this well im doing this thing"

"work ---> see the results, if error ---> document on git ---> repeat, else ---> study what i have done ----> work ---> document on git ----> start from zero ----> repeat"

"and thats how, i lost my sanity (and my virginity to this project)" - Kilko64

"its been so long, its BEEN FUCKIN MORE THAN AN HOUR AND THIS SHIT OF ISO, IS STILL CREATING THE ISO FOR ME TO TEST IT ON KVM, ITS ON 52% THE OTHER MESSAGES I SEND IT HAS BEEN ON 4%, ITS LITERALY 16:00 HOW? HOW????? TELL ME WHY???" - Kilko64

## 8-05-2025

"yes, still water, no not that i meant still with chroot error, its now 1:39 and im not working directly on the project i really got stuck on this massive wall (yes i sayed massive, that meme died a long time ago so wtf), but hopeffuly i will pass it break it and then break it down here, anyway what i wanted to talk about its not about that i think if you read the before this you probably want to hit your head into a wall and try reach nirvana or jesus faster, what i wanted to talk is that pantuga is becoming less active and it can actually lose is contribuiton role, for now is just working uploading things to git, but its just that, he dindt help me on wahtever other shit, and normaly im calm about that, let me just help him learn, but that little fucker doenst want, i asked him when you wanted me to teatch you, he sayed, "i dont know if i want because im not much into that kinda of deep stuff" and if he even i dont know atleast maked some research like tryng to help me on any way, even if he uses wndows by now he could just learn bash on vscode but no he says hes gonna wait until he has that computer and with luck start learning, and thats what makes me pissed, when that time reaches i already have 3 fuckin kids and i dont want to be look so mad now for nothing but comon he is here atleast do something, learn, i dont know, try atleast see the concepts or try to read the code and tell me what could be done to upgrade it, one example is hardcoded paths i have those if he could just see the basic of bash and go see the code he can pretty much just tell me that and a hint even if he doenst code, he even has better experience wth thinkering about code he knows more languages than me too so its not hard for him to just see the code not even script just try to comprehend it and tell me what to put it better like functions by example i could use those to separate things better i could pretty much use more of those and he could tell me about it and specialy were its more needed beacause now im focusing on another things and i dont have time to look out for the main script that well, but no he doenst, i dont even think he is reading this, so just for a moment let me insult him you little @#!$&§ and you god damn #!&&% why dont you go #$&% yourself and borrow your mom to help me #%$! her better and hit your godman %&#!&@ #$& hole, anyway, sorry if i was a little agressive because it was meant to be, so i probably figure out a way to put things on git without him and when i discover that he is going to be on maximum a tester, so he has plenty off time to wait until he wants to learn, because without someone helping me on the code, this certainly will, hopefully ani is already learning he is not like pantuga is probably going to join code sooner than i might think, and for cri4edri he is going to buy a usb drive and start learning too" - Kilko64

("if you are reading this pantuga you goddamn &%@# why dont you grab this text and put it right up your #@% hole, because i know that think is deep by now") - Kilko64

"ok but now seriosly he need to do something like really something he basicaly telled me that he will just start learning when he recives is new computer, and he is not actually much interested on going to deep things like i am with chroot, and seeing that crdr4edri can easily surpass him, because he even if he doenst know, he is going to learn anyway when we both got plenty of time and already hve seen the things i sayd ani to doo, and to think that cridr4edri also worked a lot on git and make the grammar better i can easily see pantuga work here just like "oh right i exist" so if he doenst want to end just like a tester just fucking learn something 15 minutes a day, while you scrolling to tik tok, scroll on this instead https://www.w3schools.com/bash/index.php, because i literaly talk to you everyday and many times have i said, go learn a bit of bash, its not hard go there, why dont you use wsl, vscode as an addon for bash, and you nothing so go to that site and then tell if you gonna work" - kilko64

## 13-05-2025

"hi, kilko here its now 00:55 and yes i know, it hás been a while, a gooooood while, Im here to talk about why That happened and what is going to happen Next, lets start then talking why I was not working in a while"

"first thing, i Am not so motivated to work, attention theres a clear difference about motivation and not liking it, i love working on this even if i break my head a bunch of Times or i punch my monitor a few Times and my PC too, im not so motivated because i feel like Im The ONLY One working on this project and facing this problems i have, like its a bunch of reasons for why Im not motivated, and you can clearly see on the devlogs i have stopped working a bunch of Times and skipped days i even sayed its lazyness One time, i Mean, Im working Alone facing That chroot problem thats One point, my computer is slow and testing things takes a lot of time, thats another point, and Im also having to see my time because many Times like this its early as fuck, thats point tree"

"so how do i solve it? well i have a plan, first i have to make up my week and time, Im thinking on just working friday wednestay and on another day, The rest like The end of The week and monday let it BE rest and teatching ani, second thing i have to doo, is get a new computer to solve The slowness That would motivate me a lot, Im probably Will get a new good computer on a mounth or Soo, then is basicaly wait until That, The third thing, is while i wait for The computer i teach both ani and cridr4edri, if That happens i Will not feel Alone working on this and it would keep me up for working só thats The plan"

"then this devlog is basicaly The last of this mounth, until i get The new computer, i probably Will work if i get The Patience even if i dont have The computer but dont expect That, until That i Will keep teaching ani and cridr4edri, sometimes even making up a Say just to teach them, even though i dont know if they have The time to do it, but its good to try anyway, also, Im happy about ani he is making a good progress learning, he is really making a good job, só good job ani, keep That work or else i beat your ass, anyway i Will keep teaching him"

"about pantuga, i was fucking correct, That mf hás not even seen The other devlog and That was day 8, heck it was 5 days? i dont know but i dont fucking care too, hes not doing nothing! literaly fucking nothing!, heck i insulted him and he literaly hasnt fucking seen, só thats The last thing i have to say, pantuga you are officialy out, i Will learn to push The things to git and you?, you are officialy out, i dont even care if i have to use vscode and an Addon to just out things on git but you?, you are out, i dont care you have been doing fucking nothing and i was already expecting you to not see The devlog so GET OUT, also i Will Kick him out of The contribuition and not warning him, lets see how many days would need until he see That, i think One week, yes One week, lets see if Im correct, i Mean i have Patience but comon, i try to teach you, and you do nothing, fucking nothing, só That was The last thing i have to say"

"soo The plan now is, i Will stop making things on devlog, until i get The new PC, until That, i Will keep teaching ani and cridr4edri, and keep learning some stuff i find outhere, also Im writing this on my phone and i want to insult The automátic corrector of my phone, só if you dont mind, GO FUCK YOUR SELF MOTHERFUCKER I TRY TO DIGIT AND WRITE THIS FUCKING SHIT AND I HAVE TO DELETE IT FIVE TIMES BECAUSE YOU DONT LET ME AND KEEP CORRECTING IT TO A WRONG WORD, ok now Im done, Soo yea, see you Im a mounth, it was Very good to work on this, só i Will come back, i know this is like a "trust me bro" and yes trust me bro, i Will not BE like your father, i think he still havent came back with the milk, anyway, its was a great time, só byeee i come Next mounth June to BE expecific, also i probably Will came back After day 9 of June or a bit later thsn That, só Thats it, byeee" - Kilko64



