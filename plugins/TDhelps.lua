local function run(msg, matches)
local permagbot = [[
➖➖➖➖➖➖➖
✔️لیست دستورات مدیریتی
➖➖➖➖➖➖➖ 
🔻#info :  پروفايل کاربر
〰〰〰〰〰
🔻#admins : نمايش ليست مديران گروه
〰〰〰〰〰
🔻#owner : مدير اصلي ربات
〰〰〰〰〰
🔻#modlist : لیست ناظرین
〰〰〰〰〰
🔻#bots : ليست ربات هاي گروه
〰〰〰〰〰
🔻#who :ليست همه کابران گروه به همراه ايدي
〰〰〰〰〰
🔻#id : با زدن یوزر نیم شخص ایدی شخص را دریافت کنید
mesal : #id @permag_bots
〰〰〰〰〰
🔻#promote : کاربر مورد نظر ناظر ربات میشود
▫️mesal : /promote @iduser
〰〰〰〰〰
🔻#demote : کاربر از لیست ناظرین خط میخورد
▫️mesal : /demote @iduser
〰〰〰〰〰
🔻#setrules : تعيين کردن قوانين براي گروه
▫️mesal : /setrules قوانين خود را بنويسيد
〰〰〰〰〰
🔻#rules : نمايش قوانين گروه
〰〰〰〰〰
🔻#link : نمايش لينک گروه
〰〰〰〰〰
🔻#setlink : ثبت لینک گروه
لینک گروه را بسازید سپس به ربات بدهید
〰〰〰〰〰
🔻#settings : نمايش تنظيمات گروه
〰〰〰〰〰
🔻#muteslist : نمايش ليست موارد غير فعال شده مانند عکس و ويديو
〰〰〰〰〰
🔒#muteuser : خفه کردن يک کاربر ، جلوگيري از ارسال پيام توسط آن کاربر
▫️mesal : /muteuser @user  ya  /muteuser 16516512 
با ارسال مجدد همين دستور قفل کاربر برداشته ميشود
〰〰〰〰〰
🔻#mutelist : نمايش کاربران خفه شده 
〰〰〰〰〰
🔻#clean [rules|modlist|mutelist]
پاک کردن موارد بالا
▫️mesal /clean rules  اين دستور قوانين ثبت شده را پاک ميکند
〰〰〰〰〰
❔بن کردن یک کاربر
#ban
mesal : ban 12566885
میتوانید با ایدی یا یوزر نیم کاربر را بن کنید
در صورتی که کاربر را بن کنید دیگر نمیتواند به گروه وارد شود 
#unban 
با یوزر نیم یا ایدی میتوانید کاربر را از بن خارج کنید
mesal :#unban 1235465
〰〰〰〰〰
🔻#banlist : نمايش کاربران بن شده
〰〰〰〰〰
💢》#filter : 
❔فیلتر کردن یک کلمه 
mesal :filter فحش
برای لغو
unfilter فحش
〰〰〰〰〰
💢》#حذف پیام ها (1-200)
❔حذف پیام های اخیر سوپرگروه
〰〰〰〰〰
➰شما میتوانید از '/' یا '!' یا '#' برای اجرای دستورات استفاده کنید.
❌ توجه کنید هیچ دستوری با ریپلی کار نمیکنداز یوزرنیم یا ایدی شخص استفاده کنید

]]
local permagbot2 = [[
➖➖➖➖➖➖➖
✔️لیست دستورات قفلی:
➖➖➖➖➖➖➖
💬 قفل کردن لینک
🔒#lock links
🔒#unlock links
حتی مطالبی که دارای لینک باشند حذف خواهند شد
〰〰〰〰〰
💬 قفل کردن پست رگباری
🔒#lock flood
🔒#unlock flood
〰〰〰〰〰
💬 قفل کردن اسپم
توجه : پیام های طولانی حذف خواهند شد 
🔒#lock spam
🔒#unlock spam
〰〰〰〰〰
💬 قفل زبان عربی و فارسی
🔒#lock Arabic
🔒#unlock Arabic
〰〰〰〰〰
💬 قفل اعضا
کاربران نمیتوانند وارد گروه شوند
🔒#lock member
🔒#unlock member
〰〰〰〰〰
💬 قفل راستچین
زبان فارسی و عربی کار نخواهد کرد
🔒#lock rtl
🔒#unlock rtl
〰〰〰〰〰
💬 قفل استیکر
🔒#lock sticker
🔒#unlock sticker
〰〰〰〰〰
💬 قفل شماره تماس
🔒#lock contacts
🔒#unlock contacts
〰〰〰〰〰
💬 ربات سختگیرانه شود
ربات سختگیرانه میشود و کاربر خطا کار را پاک میکند - پیشنهاد میشود فعال نکنید
🔒#lock strict
🔒#unlock strict
〰〰〰〰〰
💬 قفل فوروارد
🔒#lock fwd
🔒#unlock fwd
〰〰〰〰〰
💬 قفل تگ
تگ همان یوزر کانالها میباشد - پیشنهاد میشود غیرفعال باشد
🔒#lock tag
🔒#unlock tag
〰〰〰〰〰
💬 قفل موزیک
🔒#mute audio
🔒#unmute audio
〰〰〰〰〰
💬 قفل گیف
🔒#mute audio
🔒#unmute audio
〰〰〰〰〰
💬 قفل عکس
🔒#mute audio
🔒#unmute audio
〰〰〰〰〰
💬 قفل ویدیو
🔒#mute audio
🔒#unmute audio
〰〰〰〰〰
تنظیم حداکثر پست های رگباری
🔻#setflood [value]
▫️mesal = /setflood 10 
〰〰〰〰〰

]]
local permagbot3 = [[
➖➖➖➖➖➖➖
✔️لیست دستورات فان:
➖➖➖➖➖➖➖
💢》#fal
گرفتن فال 

💢》#استیکر کلمه
مثال : استیکر پرمگ
❔نوشتن متن بر روی استیکر

💢》#جستجوی (متن)
❔جستجو در اپارات

💢》#نوشتن (کلمه)
❔نوشتن اسم یا کلمه با 100 فونت زیبا

💢》#هواشناسی (شهر)
❔هواشناسی(بجای شهر نام شهر مورد نظر را به انگلیسی بنویسید)

💢》#زمان
❔زمان بصورت استیکر

💢》#اذان (شهر)
❔زمان تمامی اذان های یک شهر(جای شهر نام شهر مورد نظر رابه انگلیسی بنویسید)

💢》#ترجمه انگلیسی (متن)
❔ترجمه فارسی به انگلیسی


💢》#گیف (کلمه)
❔کلمه یا اسم شما بصورت گیف

💢》#ماشین*حساب عدد(-+×÷)عدد
❔حساب چهار عمل اصلی ریاضی


💢》#کوتاه کردن (لینک)
کوتاه کردن لینک شما(بجای (لینک) لینک خود را قرار دهید)

💢》#معادل (مقدارپول)
❔مقدار ارز در بازار

💢》#عکس نوشته (متن)
❔کلمه یا اسم شما بصورت عکس

➰بجای کلمه یا متن موارد دلخواه خود را بنویسید.
]]

local permagbot7 = [[

✔️برای دیدن دستورات مورد نظر خود مورد دلخواه را ارسال کنید :

✏️ دستورات:
☆دستورات قفلی
🎗》#قفل
☆دستورات فان
🎗》#فان
☆دستورات مدیریتی
🎗》#مدیریت
==============
🎲دستورات قفل و مدیریت فقط برای مدیران ربات کار میکند 
دستورات بخش فان برای همه کاربران کار میکند
________________
✏️برای مشاهده تغییراتی که انجام داده اید از این سه دستور استفاده کنید
#settings
#muteslist
#banlist
قفل تگ و فوروارد در لیست ها نیستند دستی چک کنید
...
]]

local permagbot8 = [[

💬راهنمای نصب و حذف پلاگین ها

🔺پلاگین ها را بهتر است که از طریق اتصال به سرور حذف و نصب کنید اما برای راحتی شما عزیزان این اقدام در خود ربات گنجانده شده است .
=========================
✏️ غیرفعال کردن یک پلاگین
plug - esm plugin
mesal : plug - azan
____________________
✏️ فعال کردن یک پلاگین
plug + esm plugin
mesal : plug + azan
_____________________
✏️ حذف کردن یک پلاگین
برای حذف کردن یک پلاگین نخست آن را غیر فعال کنید و سپس دستور زیر را بزنید 

!delplugin esm plugin
mesal : !delplugin azan 
_______________________
✏️ نصب کردن یک پلاگین
برای نصب یک پلاگین ، پلاگین را در داخل گروه برای ربات ارسال کنید و سپس فایل را ریپلی کرده و دستور  زیر را بزنید 

!save esm plugin 
mesal : !save azan

توجه داشته باشید که اتولانچ ها باعث میشوند ربات به ریپلی ها پاسخ درست ندهند 
پس احتمالش وجود دارد که ربات به این دستور شما پاسخی ندهد 
از طریق سرور اقدام به نصب پلاگین کنید
________________________
✏️ دیدن پترن های  یک پلاگین
/pattern esm plugin
mesal : pattern azan


...
]]
    if matches[1] == 'مدیریت' and is_momod(msg) then
        return permagbot  
  elseif matches[1] == 'قفل' and is_momod(msg) then
		return permagbot2
  elseif matches[1] == 'فان' and is_momod(msg) then
		return permagbot3
  elseif matches[1] == 'help' and is_momod(msg) or matches[1] == 'راهنما' and is_momod(msg) then
		return permagbot7
  elseif matches[1] == 'پلاگین' and is_momod(msg) then
		return permagbot8
  end
end

return {
      description = '',
      usage = '',
      patterns = {
    '^[!#/](مدیریت)$',
    '^[!#/](قفل)$',
	'^[!#/](پلاگین)$',
    '^[!#/](فان)$',
    '^[!#/](help)$',
    '^[!#/](راهنما)$',
      },
      run = run,
}

