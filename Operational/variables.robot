*** Variables ***

${url_books} =  https://www.flipkart.com/ 
${brows} =  gc
${Expected_homePage} =  Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
${Login_id} =  xpath=//div/input[@class='_2IX_2- VJZDxU']
${password} =  xpath=//div/input[@class='_2IX_2- _3mctLh VJZDxU']
${Given_Number} =  8861260610
${Given_password} =  vineethvishal@909
${submit} =  xpath=//button/span[contains(text(),'Login')]
${Electronics} =  xpath=//div/span[contains(@class,'_2I9KP_') and text()='Electronics']
${smart_wearables} =  xpath=//div/a[contains(@class,'_3QN6WI') and contains(@href,'/smartwatches-store?otracker=nmenu_sub_Electronics_0_Smart%20Watches')]
${view_all} =  xpath=//div/a/span[contains(text(),'VIEW ALL')]
${product} =  xpath=//div[contains(@class,'_4rR01T') and text()='Apple Watch Series 4 GPS + Cellular 44 mm Space Grey Aluminium Case with Black Sport Band']
${pincode} =  xpath=//input[@id='pincodeInputId']
${Expected_window} =  Apple Watch Series 4 GPS + Cellular 44 mm Space Grey Aluminium Case with Black Sport Band Price in India - Buy Apple Watch Series 4 GPS + Cellular 44 mm Space Grey Aluminium Case with Black Sport Band online at Flipkart.com
${Expected_pincode} =  560072
${check_pincode} =  xpath=//div/span[contains(@class,'_2P_LDn') and text()='Check']
${add_to_cart} =  xpath=//button[@class='_2KpZ6l _2U9uOA _3v1-ww']
${home_button} =  xpath=//div/a/img[@class='_2xm1JU']
${home_screen_cart} =  xpath=//span[contains(text(),'Cart')]
${expeted_product} =  Apple Watch Series 4 GPS + Cellular 44 mm Space Grey Aluminium Case with Black Sport Band
${remove_button} =  xpath=//div[contains(@class,'_3dsJAO') and text()='Remove']
${confirm_remove} =  xpath=//div[contains(@class,'_3dsJAO _24d-qY FhkMJZ')  and text()='Remove']
${main} =  xpath=//div/h1/span[contains(@class,'B_NuCI') and text()='Apple Watch Series 4 GPS + Cellular 44 mm Space Grey Aluminium Case with Black Sport Band']
${Xpath} =  xpath=//div[contains(@class,'KK-o3G')]
${cart_empty} =  xpath=//div[contains(text(),'Your cart is empty!')]