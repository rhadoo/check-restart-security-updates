# check-restart-security-updates
Simple script to check processes requiring restart following security updates.
This is very lightweight as uses proc instead of lsof. Using lsof for this on a busy system is very slow and can cause serious issues due to high memory usage, leading to processes being killed by the kernel.
Script is runing for years on debian 5/6/7 in production without issues.