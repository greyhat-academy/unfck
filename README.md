# ``` unfck ``` 
A nifty tool for when you need to compare installed packages and hardware between systems to find out who you need to yell at for fcking up.

---

##	What is it intended to do?
####	``` unfck ``` is intended to easily grab the following specs of a system:

- Software
  - Installed Packages
    - Package Versions

- Hardware
  - Installed Hardware
    - Installed Firmware Versions

- Network
  - Interfaces
    - IPv4 Addresses
    - IPv6 Addresses
    - FQDNs
    - DNS Servers
    - WiFi Configuration

###	This way one can identify pain painpoints and triage which package broke something and be able to make a bugreport based off that.

##	For what is it intended for?
####	If you want to find out why a game or application broke, this is intended to let you find out.
Basically if you know something works on Distribution X Release-Version Y with Packages 0...N version Z, you can basically take an *"inventory"* of the system and compare it.
-	It is recommended to regularly use it save *"known working configurations"* (similar to backups) and back those up as well!

##	What is the intended design?
###	In case an application or game stops working, one can simply grab the system information collected via ```unfck``` and then run i.e. ```diff``` to filter out what matters.
Obviously most modern Linux and Unix-esque Systems have hundeds if not thousands of packages installed, but usually there's only a small list of packages that are relevant for games and other applications.
-	Oftentimes it's just yet another ```GlibC``` *"minor update"* because *'fck the users! We'll break userspace!!!'*... 

##  What is the Report Header for?
### To distinguish between multiple systems and runs, it's vital to uniquely identify both the machine it's being run on *and* the run itself.
This way it's easy to pin down the specific report to a specific machine, which is intentional.

---

