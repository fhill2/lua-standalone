https://stackoverflow.com/questions/13861282/understanding-kernel-message-nobody-cared-try-booting-with-the-irqpoll-optio

Ideally, the above message should be followed by a stack trace, which should help you determine which subsystem is causing the issue. This message means the interrupt handler got stuck due to a overhead, and did not return thus causing the system to disable IRQ#X. This is seen in cases of a buggy firmware.


QEMU has an educational device called `edu` that generates interrupts, and is perfect to explore this.


The computer has rebooted from a bugcheck.
The bugcheck was: 0x0000003b
A dump was saved in C:\WINDOWS\MEMORY>DMP Report Id:


___
how to stop automatically rebooting to bugcheck:
https://answers.microsoft.com/en-us/windows/forum/all/how-do-i-stop-my-computer-from-rebooting-due-to-a/be5f2393-05c3-4f64-86ad-db56d9f4f127
\


The computer has rebooted from a bugcheck.  The bugcheck was: 0x0000003b (0x00000000c0000002, 0xfffff8073772810a, 0xfffff0037eac94e0, 0x0000000000000000). A dump was saved in: C:\Windows\MEMORY.DMP. Report Id: b96369e6-a413-40ca-ae78-9e1d76496e48.


device manager yellow symbol alarm 


https://github.com/tandasat/DdiMon/issues/22


___

windows.com/stopcode
system service exception


https://gist.github.com/lyarbean/7036986



https://superuser.com/questions/1097234/where-can-i-find-last-blue-screen-error-message-after-reboot-in-windows-10