---
id: 2015-09-29-broken-keyboard
title: The result of a broken keyboard
kind: article
created_at: 2015-09-29 11:31
tags:
 - random
---

... or, how I wasted an entire morning trying to get back into my computer.

<!-- more -->

The problem
-----------

Here's the situation: I urgently needed some files from the Linux partition on my laptop, but the internal keyboard of the laptop was broken. That might seem like a minor problem, since you can just plug in a USB keyboard. However, it turned out that GRUB (the bootloader that lets me select between booting Linux and Windows) would not recognize my USB keyboard. And by default, the Windows option would be highlighted. So, Linux was inaccessible!

I first tried other USB keyboards, but to no avail. I then tried finding solutions on the Internet and according to the documentation USB keyboards *should* work just fine. Evidently, something was wrong with my GRUB, but even if I would have found a solution to the problem, I would not be able to boot Linux to apply it.

I then wanted to boot from a Linux live CD to read the files from there (and maybe fix GRUB). However, the BIOS requires pressing the Escape key to get into the boot order settings, and just like GRUB it does not recognize USB keyboards. So I wasn't able to boot from any removable medium either; the only thing I could do was booting Windows. So, I was stuck.

Accessing Linux stuff from Windows
----------------------------------

A quick search ruled out the possibility of (reliably) accessing an ext4 partition from Windows. However, it would be possible to run Linux in a virtual machine and read the partition using that. I first downloaded the 64-bit Ubuntu image, but that wouldn't run: to run 64-bit VMs, VirtualBox needs some BIOS setting... and I couldn't access the BIOS settings. So, I ran the 32-bit image, which worked fine.

I then needed to give this VM access to the partition. Normally in a VM you have designated files on the host system that represent hard disks, but apparently it is also possible to give the VM access to a real partition using something called *raw partition access*. This needed some command-line trickery that I found here (TODO).

Then I only got permission errors. Apparently Windows didn't want VirtualBox to read a disk directly, and blocked the access. After more searching I found a solution on this page; you needed to take the disk &lsquo;offline&rsquo; and clear the read-only bit using `diskpart`, some arcane CLI tool that lets you do advanced stuff with disks, that is not possible in a GUI.

It then still didn't work, so I tried running VirtualBox as administrator... and it worked.

Messing around with GRUB
------------------------

So, I was able to mount my partition! I opened it in the file explorer and bumped into the next problem: I had forgotten that my home partition is encrypted using `ecryptfs`. Siiiigh. The suggested way to mount an encrypted partition (`ecryptfs-mount-private`) didn't work; it threw an error that the partition was not set up properly. I didn't know why that happened, and I didn't want to mess up my files in any way, so I decided to take another approach. I mounted the root partition instead of the home partition, and wanted to 