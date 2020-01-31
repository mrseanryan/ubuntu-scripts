# ref: https://askubuntu.com/questions/459900/how-to-find-my-current-java-home-in-ubuntu/657468
jrunscript -e 'java.lang.System.out.println(java.lang.System.getProperty("java.home"));'
