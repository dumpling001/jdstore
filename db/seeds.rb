# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.delete_all
# puts "原有用户已全部删除，正在重新创建新用户......"
# Initialize Boss User 1
#   u = User.new
#   u.email = "boss-cj@success.com" #可以改成自己的email
#   u.password = "666666"
#   u.password_confirmation = "666666"
#   u.is_admin = true
#   u.save
#   puts "老板账号#{u.email}注册成功！密码#{u.password}"
#
# # Initialize Boss User 2
#   u = User.new
#   u.email = "boss-lhj@success.com" #可以改成自己的email
#   u.password = "666666"
#   u.password_confirmation = "666666"
#   u.is_admin = true
#   u.save
#   puts "老板账号#{u.email}注册成功！密码#{u.password}"
#
# # Initialize Customer User 1
#   u = User.new
#   u.email = "cj@success.com" #可以改成自己的email
#   u.password = "666666"
#   u.password_confirmation = "666666"
#   u.is_admin = false
#   u.save
#   puts "买家账号#{u.email}注册成功！密码#{u.password}"
#
# # Initialize Customer User 2
#   u = User.new
#   u.email = "lhj@success.com" #可以改成自己的email
#   u.password = "666666"
#   u.password_confirmation = "666666"
#   u.is_admin = false
#   u.save
#   puts "买家账号#{u.email}注册成功！密码#{u.password}"

  # Initialize Customer User 3
    # u = User.new
    # u.email = "nice@success.com" #可以改成自己的email
    # u.password = "666666"
    # u.password_confirmation = "666666"
    # u.is_admin = false
    # u.save
    # puts "买家账号#{u.email}注册成功！密码#{u.password}"

#Initialize Category

Category.delete_all
puts "原有类别已全部删除，重新创建新类别......"

Category.create!(name: "情感")
puts "情感类别创建成功！"
Category.create!(name: "读写")
puts "读写类别创建成功！"
Category.create!(name: "理财")
puts "读写类别创建成功！"

Product.delete_all
puts "原有商品已全部删除，重新创建新商品......"

#Initialize Product
#product 1
Product.create!(title: "给女生的五个择偶建议",
  description: "（一）看对方的父母是不是幸福的一对

这几乎会过滤掉至少八成以上的候选人。如果对方的父母是那种老大岁数了还粘粘糊糊，上街拉着手的，那你就直接嫁了罢。嫁给这样的父母的孩子，婚姻不幸福的概率很低——在这样的家庭里长大，对婚姻的理解就是这样的。如果最终竟然真的不幸福，八成是你自己的问题——你的父母不是那样的，所以你也不懂那样的生活……",
  price: 199,
  quantity: 1000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210316058&idx=1&sn=a40364e7973711b79a81b069c73d72bf&scene=4#wechat_redirect",
  category_id: 1,
  image: open("#{Rails.root}/app/assets/images/marriage.jpg")
  )
puts "1号产品创建成功！"

#product 2
Product.create!(title: "给自尊心强的人的建议",
  description: "人就是这样，自己水平越差，对自己要求越高——当然对别人要求则更高。水平越高的人，常常对他人更宽容。梅兰芳教徒弟的时候最常说的话就是，『这样已经不错了！』而纵观所有学习能力强的人，他们都有一个重要的特征：对自己的差有很强的容忍度，因为他们知道自己终将进步，自己终将能进步到没那么差、甚至相当不错的地步——因为他们已经有过无数次如此的经验。他们知道谁都是从差开始到不差、到好、到相当好的，这过程中的每个环节都无法跨越，只能一步一步来。",
  price: 199,
  quantity: 1000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210580935&idx=1&sn=b9417990f4ffae5e37551bdc8e564d49&scene=4#wechat_redirect",
  category_id: 1,
  image: open("#{Rails.root}/app/assets/images/ego.jpg")
  )
puts "2号产品创建成功！"

#product 3
Product.create!(title: "如何避免被情绪左右",
  description: "目前脑科学家的猜想是，主导理性理性逻辑思考的大脑皮层常常是最后才被激活的，而在此之前，控制情绪的更内层的脑细胞早已被激活。于是，当情绪（愤怒、恐惧、高兴等等）涌上来的时候，大脑皮层常常供血不足、供氧不足，于是思考质量受到严重影响——通常被形容为“大脑一片空白”……",
  price: 199,
  quantity: 1000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210553384&idx=1&sn=dbcfd09da0f8afcc18c4f3764f54442a&scene=4#wechat_redirect",
  category_id: 1,
  image: open("#{Rails.root}/app/assets/images/emotion.jpg"),
  )
puts "3号产品创建成功！"

#product 4
Product.create!(title: "如何识人",
  description: "人是这个社会的最基本单位，你也是其中一个。这世界主要由形形色色的人所构成，于是它就好像有生命、有灵魂一样，它总会对你有所反应。你所打交道的人群不同，你的世界就不同。最令人震惊的是，活在同一个物理世界里的人们，由于身处的朋友圈不同，就好像活在不同的平行空间里一样，与此同时也很难想象另外一个平行空间究竟是什么样的。",
  price: 199,
  quantity: 1000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210477917&idx=2&sn=0e6c66af524afec39e7c3bfc18eb2901&scene=4#wechat_redirect",
  category_id: 1,
  image: open("#{Rails.root}/app/assets/images/friend.jpg")
  )
puts "4号产品创建成功！"

#product 5
Product.create!(title: "为什么及如何精读",
  description: "做人可以不老实，学习不老实就非常不划算。在这一点上，我算是捡了便宜。 我的父母从来不吝惜给我买书的钱，于是几乎从记事儿开始，我的主要花销就是买书，直到今天。而在我八九岁的时候，母亲随父亲平反落实政策调动工作，不再做兽医，调到某大学的图书馆工作——于是家里便省下了很多很多买书的钱。从小泡在图书馆里长大，实在是我这一辈子最幸运的事情。",
  price: 99,
  quantity: 10000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210820294&idx=1&sn=0111904831e1081a22312121092fecbf&scene=4#wechat_redirect",
  category_id: 2,
  image: open("#{Rails.root}/app/assets/images/reading.jpg")
  )
puts "5号产品创建成功！"

#product 6
Product.create!(title: "十分钟重修语文",
  description: "第一分钟：词汇（Vocabulary）

最好换个角度重新认识词汇。名词是干什么的？名词是用来记录你所能够感知的事物——管它是抽象的还是具体的。形容词是干什么的？你用形容词来记录你对你能够感知的那个事物的感知。动词呢？动词用来记录你能够感知的那个事物所发出的动作。那么最后，副词呢？副词修饰动词的时候，是用来记录你对你能够感知的那个事物所发出之动作的感知；副词用来修饰形容词的时候，是用来记录你对你能够感知的那个事物的感知的感知。（这一分钟的内容看起来比较拗口，只要能做到对这些文字断句准确，理解无误，那么仅在一分钟之后就已经脱胎换骨——你对文字的感知已经大不相同。）",
  price: 99,
  quantity: 10000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210835224&idx=1&sn=85789ec62f088e4b2934913af2369003&scene=4#wechat_redirect",
  category_id: 2,
  image: open("#{Rails.root}/app/assets/images/language.jpg")
  )
puts "6号产品创建成功！"

#product 7
Product.create!(title: "如何收集好书",
  description: "最先可以从作者入手，买牛人写的书，尝试着去理解牛人的看法和想法。想了解任何一个学科，都可以先去看看那个学科里当前最著名的人写过哪些书。最著名的人不一定是最好的作者，但，总体上来看，他还是最靠谱一些。我读宏观经济学的时候，第一本教课书读的是MIT的经济学教授Paul Krugman与Maurice Obstfeld合著的那本International Economics: Theory and Policy；此书1998年第一版，到2008年已经是第八版了；同一年，Paul Krugman获得诺贝尔经济科学奖。这样的作者所写的书，读起来相对更加放心一些——尽管，时时刻刻保留一点怀疑态度没什么不对，也确实应该。再后来，想去认真读一下心理学的时候，我选的第一本书是宾夕法尼亚大学心理学教授Martin E. P. Seligman的What You Can Change and What You Can't: The Complete Guide to Successful Self-Improvement。",
  price: 99,
  quantity: 10000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210269216&idx=1&sn=51303ef3b76cd32277ea66fb3e23a2d2&scene=4#wechat_redirect",
  category_id: 2,
  image: open("#{Rails.root}/app/assets/images/books.jpg")
  )
puts "7号产品创建成功！"

#product 8
Product.create!(title: "为啥人丑就要多读书？",
  description: "有一项研究表明，人们的生活状态发生变化时，基因也会发生变化。研究者跟踪了 30 位患有前列腺癌的男性，三个月的生活状态变化 —— 包括更健康的饮食习惯（多吃水果蔬菜、全麦、豆制品），适度的运动（比如每天走半小时），每天一小时的舒缓压力（例如冥想） —— 不仅产生了减重、降血压等变化，甚至引发了基因的变化：总计有 500 个左右的基因发生了变化，包括 48 个启动，453 个关闭。",
  price: 99,
  quantity: 10000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=400010714&idx=1&sn=70260d020b48efa79ef339ac27ef8886&scene=4#wechat_redirect",
  category_id: 2,
  image: open("#{Rails.root}/app/assets/images/readingman.jpg")
  )
puts "8号产品创建成功！"

#product 9
Product.create!(title: "如何开始理财",
  description: "理财越早开始越好，这已经说过了。那如何开始呢？

从今天开始存钱。

可存钱这事儿究竟实际上有多难呢？统计表明，73% 的美国人只有 1,000 美元不到的“应急钱”。按说，中国的文化决定了历史上的储蓄率全球最高，但随着全球化的进程，随着年轻一代的成长，随着信用卡的普及，没多久中国人估计也跟美国人差不多。",
  price: 299,
  quantity: 100000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210879361&idx=1&sn=9488460e9f6b8f95255f1d037a1925b6&scene=4#wechat_redirect",
  category_id: 3,
  image: open("#{Rails.root}/app/assets/images/investment.jpg")
  )
puts "9号产品创建成功！"

#product 10
Product.create!(title: "我是如何获得财务自由的",
  description: "到了今天，我常常与创业公司的创始人聊天，如果一定要让我分享什么有用的经验的话，我就会告诉他们，

赚钱一定要快，要快到超越“第二宇宙速度”，不然你飞不出去。

当然，很多的人根本飞不起来…… 因为他们好像认为赚钱是很 low 的事情，他们不好意思赚钱，他们也不敢赚钱，甚至公开鄙视那些拼命赚钱或者赚到很多钱的人。与他们沟通过之后会发现，这些人好像根本就不知道财务上的“重力加速度”的存在，他们误以为自己活在真空里，他们觉得自己虽然也想飞，但飞不起来才是正常的结果…… 可奇怪的是，他们也一样想赚钱，一样想赚很多钱，一样想很快地赚很多钱，但就是不愿意承认，也不愿意告诉别人，直接或间接的结果就是进入一种“自欺欺人”的状态 —— 要知道我们的大脑是不会对自己撒谎的，你要一定对它撒谎，它的策略就是相信那个谎言，直到那个谎言变成事实。",
  price: 299,
  quantity: 100000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=400875301&idx=1&sn=c5374f87d9676259f7f16d7b48c6ca0e&scene=4#wechat_redirect",
  category_id: 3,
  image: open("#{Rails.root}/app/assets/images/escape.jpg")
  )
puts "10号产品创建成功！"

#product 11
Product.create!(title: "赚钱的最正确姿势",
  description: "这是很认真、也是很重要的建议，不管你什么年龄：

从现在开始刻意寻找那种可以一次性付出却可以长期收入的事儿去做。

这种事情不像看起来的那么难，甚至有越来越简单的趋势。比如，过去只有靠写书被正式出版才能拿到版税，现在很多人写写微信公共帐号就可能开通“打赏”，并且收入更高一点，这就是趋势。",
  price: 299,
  quantity: 100000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=210912190&idx=1&sn=f5bee2b2750929ee0074efb8dfbe4cd1&scene=4#wechat_redirect",
  category_id: 3,
  image: open("#{Rails.root}/app/assets/images/sleep.jpg")
  )
puts "11号产品创建成功！"

#product 12
Product.create!(title: "哪些钱不能省",
  description: "买书的钱不能省

正式出版物并没有因为互联网的发展而贬值 —— 尤其是“非小说类”（Non-Fiction）。互联网上虽然也有很多很高质量的、“与时俱进”的零散文章（比如你现在正在读的这篇，哈哈），但体系完整的知识，通常还是，也越来越是，只有少数人才有能力创作的。感谢他们，我们才可能终生自我教育，无穷无尽。在追求学识的过程中，免费常常是陷阱 —— 因为我们自己的时间并不免费，同时也会随着我们自己的学识越来越贵……",
  price: 299,
  quantity: 100000,
  link: "https://mp.weixin.qq.com/s?__biz=MzAxNzI4MTMwMw==&mid=211036079&idx=1&sn=f84caaefd809c50853691c669b35b5b0&scene=4#wechat_redirect",
  category_id: 3,
  image: open("#{Rails.root}/app/assets/images/money.jpg")
  )
puts "12号产品创建成功！"
