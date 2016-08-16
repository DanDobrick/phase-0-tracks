# Release 1 - Research Web Servers

- What are some of the key design philosophies of the Linux operating system?
  - The User knows what they are doing; they are computer literate
  - Each program does one thing well
  - Small is beautiful

- In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A VPS is a server that is running on a remote computer. The computer is not 100% dedicated to your server and might be running numerous servers alongside your own, BUT you are guaranteed whatever disk space, upload, download and CPU time/speed that you paid for. The advantages of using a VPS are:
    More stability - Someone else is not going to affect your site's uptime or response time
    More control - You can install whatever you want and it will run natively
    Cost - It's cheaper than a dedicated server 
    Security - It's safer than a shared server since you are not sharing it with people who could affect your server's security

- Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
  You can run more dangerous commands as root use and SO CAN ANY PROGRAMS THAT YOU RUN AS ROOT! Meaning if your program accidentally (or intentionally) tries to run "rm -rf /", then it will be able to, and you've just deleted everything on your drive. That's not ideal.