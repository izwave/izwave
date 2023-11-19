from selenium import webdriver
from selenium.webdriver.common.keys import Keys

from selenium.webdriver.chrome.service import Service



s = Service(executable_path=r"C:\Users\Sh-X\AppData\Local\SeleniumBasic\chromedriver.exe")
driver = webdriver.Chrome(service=s)
driver.get ("https://www.google.com.br/")
driver.find_element_by_name("q").send_keys("Senac ead" + Keys.RETURN)

