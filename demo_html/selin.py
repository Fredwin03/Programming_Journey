from selenium import webdriver
import time
p = 'Gomugomuno'














from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from bs4 import BeautifulSoup
import lxml
driver = webdriver.Chrome(executable_path='C://Users/John Fredwin/Desktop/chromedriver.exe')
driver.get('https://eduserve.karunya.edu/Login.aspx')
regNo = driver.find_element(By.ID, 'mainContent_Login1_UserName')
regNo.send_keys('URK21EC1038')
passWord = driver.find_element(By.ID, 'mainContent_Login1_Password')
passWord.send_keys(p)
passWord.send_keys(Keys.ENTER)
driver.get('https://eduserve.karunya.edu/Student/TimeTable.aspx')
tt = driver.find_element(By.ID, 'mainContent_DDLACADEMICTERM')
tt.click()
tt.send_keys(Keys.DOWN)
tt.send_keys(Keys.ENTER)
# content = driver.page_source.encode("utf-8").strip()
# edu_soup = BeautifulSoup(content,"lxml")
# driver.get("https://eduserve.karunya.edu/Logout.aspx")
time.sleep(3)

# with open("final_list.csv", 'a') as f:
#         f.write("DAY,Hour 1,Hour 2,Hour 3,Hour 4,Hour 5,Hour 6,Hour 7,Hour 8,Hour 9")
#         f.write("\n")

# for x in range(5):
#     final_soup = edu_soup.find("tr",{"id":f"ctl00_mainContent_grdData_ctl00__{x}"})
#     my_list = []
#     for x in final_soup:
#         time_table = ""
#         string_soup = x.text
#         time_table = string_soup.replace("<td>","").replace("</td>","")
#         if time_table == "\xa0":
#             time_table = "FREE"
#         my_list.append(time_table)
#     with open("final_list.csv", 'a') as f:
#         f.write(",".join(my_list[1:]))
#         f.write("\n")
# print("Full Report Generation Succesfull : )")