echo Installing chrome browser...

# note: chromium is NOT identical to chrome (chromedriver works but some web sites can detect as not-Chrome)
# sudo apt-get install chromium-browser

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

echo run via 'google-chrome'
