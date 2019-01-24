echo Installing ChromeDriver - required for Selenium ...

wget https://chromedriver.storage.googleapis.com/2.43/chromedriver_linux64.zip
unzip chromedriver_linux64.zip

sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver

echo Installing Java - required by Selenium ...
sudo apt-get install default-jdk 
