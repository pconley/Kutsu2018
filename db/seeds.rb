Size.delete_all
sizes = ['7','7 1/2','8','8 1/2','9','9 1/2','10','10 1/2','11','11 1/2','12','12 1/2']
sizes.each { |text| Size.create( text: text ) }

Wide.delete_all
wides = ['normal','narrow','wide (d)','extra wide']
wides.each { |text| Wide.create( text: text ) }

quotes = [
["...Thank you, thank you, thank you! Ya'll will never know how much these shoes meant....  When we opened the box she started crying and asking if they were for her. For a child who never owned more than 1 pair of shoes in her life, it was like Christmas.... Once again I want to say thanks, you made my child's whole year...", "BA, Daughter Age 5, Louisiana"], 
["...I would like to applaud you for the service you offer. It is indeed a nice feeling to know that I have at last found (an organization) that caters to my needs! ... Everything was perfect ... I would like you to know how much easier you make (getting) shoes for an amputee...", "JS, Age 39, Florida"], 
["...it made me feel like a little kid that had just found a treasure box! To have 5 pairs of shoes at once is unheard of! ...I can't put into words how much I appreciate all the effort.", "CH, Age 45, California"], 
["...(since my accident three years ago) I have gone through 38 surgeries, 21 blood transfusions ... 50 leg casts, 11 leg braces and 30 pairs of shoes ...I didn't think that I would ever be able to wear really cool shoes... because my Mom really can't afford such expensive shoes. I appreciate everything that you have done, and hopefully one day I can repay you for your kindness ... thanks once again for making me feel like I am still in style with my friends...", "KM, Age 17, Florida"
],
["...It was so exciting to open the box from the SHOE EXCHANGE not knowing what was inside. When the box was opened and I discovered the shoes were discovered I tried them on at once. They fit perfectly. ... Thanks again. ...", "LC, Age 9, Illinois"], 
["...As a senior, it is a significant burden to have to buy two pairs... and throw one pair away ... I was delighted (and) think they are the nicest I've ever owned ... once again, a rousing 'Thank You'...", "EC, Age 69, Alberta"
],
["...Many thanks for the recent package of mis-matched shoes for my 9-year-old son. He was thrilled with them ... They fit perfectly and he feels so pleased with himself with dress shoes for church now. Many thanks for your wonderful service!...", "LC, Son Age 9, Illinois"
],
["...like thousands of people ... I appreciate all that you do ... since (I joined in) 1988 the service you provide improves every year ... thank you all for everything that you are doing for me &amp; everyone else...", "JM, Age 36, California"
],
["I have not been so flattered with attention since I was a baby. And that has been some time ago! My most humble thanks to those who so generously devote their time and talents...", "CSJ, Age 77, Arizona"
],
["It was a surprise ... to get so many pairs of shoes right around the holidays. It is hard to find just the right dress shoes, and in style too. She really liked (them). They are expensive and hard for us to buy two pairs ... I cannot say enough good things about NATIONAL ODD SHOE EXCHANGE to people I meet. You bring a smile to her face and that means a great deal to us. ... She really loves her shoes.", "KR, Daughter Age 8, Missouri"
],
["Being a left leg amputee your organization is much appreciated. I have been recommending your service every chance I get.", "FT, Age 66, Delaware"
],
["...she was thrilled and acted like it was Christmas...", "LW, Daughter Age 2, Indiana"
],
["...Once again, thanks for saving my feet.... You provide a most valuable service!...", "JW, Age 59, Florida"
],
["...I appreciate your organization. I can't thank you enough...", "CR, Age 38, Nebraska"
],
["...it's so nice to have the styles and variety, the fit and the quality of the shoes they (sent) me...", "RC, Age 63, Maine"
],
["...it is not like going to a store but like going to visit good friends and coming home with shoes that fit odd size feet...", "HR, Age 82, California"
],
["They solved a serious personal need for me ... What a wonderful organization!", "DS, Age 62, Arizona"
],
["You have been an answer to a prayer...", "CB, Daughter Age 2, Texas"
],
["...I know it is not easy, but you have done a wonderful job ... you have made my feet worth walking on...", "RR, Age 42, Indiana"
],
["Without your help he could not have more than one pair at a time...", "MS, Son Age 13, Arkansas"
],
["As soon as (she) returns to earth, she will send a 'Thank You'. As of now she is still on clouds showing everyone she knows and some she doesn't...", "JZ, Age 17, Wisconsin"
],
["...thank you for the kindness your organization has given my son and I over the years. Looking for fashion, comfort and style in two different sizes ... was awful...", "AB, Son Age 12, New Jersey"
],
["...not only did they fit perfectly, but they were fashionable too...", "SW, Niece Age 2, Indiana"
],
["...buying two pairs ... has been a financial burden on my parents and myself ... (the shoes you sent) fit great and look fantastic!", "JB, Age 34, New York"
],
["Thank you so much for the ... shoes. They fit (him) great and they are the first pair of shoes in the last year or so that fit him and (that) he likes. ... Your organization is a wonderful gift.", "WL, Son Age 5, Ohio"
]
]

Quote.delete_all

quotes.each do |text, sig|
  Quote.create( text: text, signature: sig, status: :normal )
end
