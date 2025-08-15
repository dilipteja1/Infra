# Installing TrueNAS scale
Fundamental freedom of TrueNAS is its ability to run on any x86 computer. 

## Installation Steps
1. Download the ISO file and flash it onto a bootable USB (typically pendrive)
	1. use softwares like RUFUS or [Balena Etcher](https://etcher.balena.io/)
	2. Download the ISO file from [TrueNAS downloads](https://www.truenas.com/download-truenas-community-edition/)
2. Connect the bootable USB to the machine allocated for NAS
3. Reboot
4. Upon Restart
	1. The USB image should automatically be detected
	2. if not
		1. Go to boot menu by repeatedly pressing F12 right after system reboot
		2. change the boot priority to USB
		3. save and restart
		4. If the issue persists, disable secure boot and try again (google search for more info)
5. TrueNAS installer pops up 
	1. Set a **drive**  to install TrueNAS OS(typically a SSD)
> Note that the Drive used to install TrueNAS is not the same used for the storage and not available for TrueNAS pool
	2. Set password for the admin user in the web authentication popup
		1. Suggested to use Duttlab's general password rules
6. If the process went smooth, we should get an IP address where we can access the TrueNAS UI
	1. Make sure the machine is connected to the Internet. Can be a local network

>> for more details follow : [Youtube tutorial](https://www.youtube.com/watch?v=67KtKoW4IM0&t=38s)