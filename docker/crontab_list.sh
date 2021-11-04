# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############
#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
# 荣耀焕新季
26 0 7-20 8 * node /scripts/jd_ryhxj.js >> /scripts/logs/jd_ryhxj.log 2>&1
#金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 3,6,8 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
#女装盲盒7.1-7.30
35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
#点点券
35 1,2,3, * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
# 特物Z|万物皆可国创
30 11 * * * node /scripts/jd_superBrand.js >> /scripts/logs/jd_superBrand.log 2>&1
# 金机奖投票
33 4,7 8-20 * * node /scripts/jd_golden_machine.js >> /scripts/logs/jd_golden_machine.log 2>&1
# 预售福利机
5 1,2 * * * node /scripts/jd_ys.js >> /scripts/logs/jd_ys.log 2>&1
# 惊喜大作战
50 1 * * * node /scripts/jd_jxdzz.js >> /scripts/logs/jd_jxdzz.log 2>&1
# 环游记
20 * * * * node /scripts/jd_hyj.js >> /scripts/logs/jd_hyj.log 2>&1
# 潮玩儿制躁团
23 11,12 * * * node /scripts/jd_zzt.js >> /scripts/logs/jd_zzt.log 2>&1
# 京东超级盒子
24 3,13 * * * node /scripts/jd_cjhz.js >> /scripts/logs/jd_cjhz.log 2>&1
# 双11星推官
12 0-23/5 * 11 * node /scripts/jd_1111xtg.js >> /scripts/logs/jd_1111xtg.log 2>&1
# 选品官
27 4,14 1-13,22-31 10,11 * node /scripts/jd_xpg.js >> /scripts/logs/jd_xpg.log 2>&1
# 手机竞猜
0 2 * * * node /scripts/jd_sjjc.js >> /scripts/logs/jd_sjjc.log 2>&1
# 牛牛福利
1 0,9,19,23 * * * node /scripts/jd_nnfls.js >> /scripts/logs/jd_nnfls.log 2>&1
# 京东签到图形验证
16 10 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1

##############长期活动##############
# 签到
7 6,17 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 摇京豆
6 1,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 摇钱树
23 */2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
# 东东萌宠
35 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
10 7-22/1 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
12 0-23/6 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 进店领豆
12 1 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 东东超市
31 0,1-23/2 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
45 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京豆变动通知
20 10 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 京豆变动月通知
30 9 1 * * node /scripts/jd_bean_change_m.js >> /scripts/logs/jd_bean_change_m.log 2>&1
# 京东抽奖机
11 1 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
21 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 天天提鹅
28 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 小鸽有礼
13 1,22,23 * * * node /scripts/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1
# 金融养猪
32 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 东东小窝
46 6,23 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# 东东工厂
26 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 赚京豆(微信小程序)
12 1,2,3 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 京东快递签到
30 5 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 5 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 微信小程序京东赚赚
6 2-6/2,11 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# 导到所有互助码
23 7 * * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 口袋书店
38 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
# 签到领现金
10 5,6,7 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 签到领现金兑换
#0 0 * * * node /scripts/jd_cash_exchange.js >> /scripts/logs/jd_cash_exchange.log 2>&1
# 闪购盲盒
47 8,22 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
10 6,21 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#美丽研究院
1 7,14,22 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
#京东保价
#41 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东极速版签到+赚现金任务
21 1,6 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#家庭号
#10 6,7 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
#京东直播（又回来了）
30-50/5 12,23 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
# 领金贴
5 6 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
# 送豆得豆
45 4 * * * node /scripts/jd_sendBeans.js >> /scripts/logs/jd_sendBeans.log 2>&1
# 早起福利
30 6 * * * node /scripts/jd_goodMorning.js >> /scripts/logs/jd_goodMorning.log 2>&1
# 早起赢现金
30 7 * * * node /scripts/jd_morningSc.js >> /scripts/logs/jd_morningSc.log 2>&1
# 领券中心签到
15 8 * * * node /scripts/jd_ccSign.js >> /scripts/logs/jd_ccSign.log 2>&1
# 热血心跳,狂解压
#5 6,18 1-16,21-30 9,10 * node /scripts/jd_decompression.js >> /scripts/logs/jd_decompression.log 2>&1

##############京东-玩一玩任务区##############
#京东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#京东健康社区收集健康能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
# 东东农场
15 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 京东宠汪汪
15 1-23/2 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
# 京东宠汪汪喂食
15 1-23/1 * * *node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 京东宠汪汪积分兑换奖品
59 7,15,23 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
# 京东宠汪汪偷好友积分与狗粮
10 1-22/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 京东宠汪汪邀请助力与赛跑助力
15 10 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
# 京东手机狂欢城活动
0 1-19/6 * * * node /scripts/jd_carnivalcity.js >> /scripts/logs/jd_carnivalcity.log 2>&1
# 京东手机狂欢城助力
#10 1,8 * * * node /scripts/jd_carnivalcity_help.js >> /scripts/logs/jd_carnivalcity_help.log 2>&1
# 极速版 汪汪乐园
20 1-23/1 * * * node /scripts/jd_joy_park.js >> /scripts/logs/jd_joy_park.log 2>&1
# 极速版 汪汪乐园每日助力
30 23 * * * node /scripts/jd_joy_park_help.js >> /scripts/logs/jd_joy_park_help.log 2>&1
# 跳跳乐瓜分京豆脚本
30 0,11,21 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1
# 内容鉴赏官
15 3,6 * * * node /scripts/jd_connoisseur.js >> /scripts/logs/jd_connoisseur.log 2>&1
# 集魔方
11 10 * * * node /scripts/jd_mofang.js >> /scripts/logs/jd_mofang.log 2>&1
# 京东小魔方
31 2,8 * * * node /scripts/jd_mf.js >> /scripts/logs/jd_mf.log 2>&1
# 芥末签到
11 22 * * * node /scripts/jd_zsign.js >> /scripts/logs/jd_zsign.log 2>&1
# 芥么赚豪礼
37 22 * * * node /scripts/jd_genz.js >> /scripts/logs/jd_genz.log 2>&1
# 东东超市抢京豆
11 0,9 * * * node /scripts/jd_fission.js >> /scripts/logs/jd_fission.log 2>&1
# 省钱大赢家之翻翻乐
#20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1

##############京喜脚本任务区##############
# 京喜签到
5 3 * * * node /scripts/jd_jxqd.js >> /scripts/logs/jd_jxqd.log 2>&1
# 京喜财富岛
18 0-23/2 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
# 京喜财富岛互助
18 0,1,9,14,18 * * * node /scripts/jd_cfd_help.js >> /scripts/logs/jd_cfd_help.log 2>&1
# 京喜财富岛提现
59 11,12,23 * * * node /scripts/jd_cfdtx.js >> /scripts/logs/jd_cfdtx.log 2>&1
# 京喜工厂
50 1-23/1 * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 京喜工厂开团
*/10 0 * * * node /scripts/jd_jxkt.js >> /scripts/logs/jd_jxkt.log 2>&1
# 京喜农场
30 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
# 京喜牧场
15 0,12,22 * * * node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
# 京喜领88元红包
4 2,10 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1

##############mod脚本任务区##############
# 东东电竞经理
15 10 * * * node /scripts/m_djjl.js >> /scripts/logs/m_djjl.log 2>&1
# 试用
30 10 * * * node /scripts/m_try.js >> /scripts/logs/m_try.log 2>&1
# 京东到家
*/5 * * * * node /scripts/jddj_getPoints.js >> /scripts/logs/jddj_getPoints.log 2>&1
*/5 * * * * node /scripts/jddj_fruit_collectWater.js >> /scripts/logs/jddj_fruit_collectWater.log 2>&1
10 8 * * * node /scripts/jddj_plantBeans.js >> /scripts/logs/jddj_plantBeans.log 2>&1
10 0 * * * node /scripts/jddj_bean.js >> /scripts/logs/jddj_bean.log 2>&1
10 0,3,8,11,17 * * * node /scripts/jddj_fruit.js >> /scripts/logs/jddj_fruit.log 2>&1
#愤怒的现金
#0,30 0 * * * node /scripts/m_angryCash.js >> /scripts/logs/m_angryCash.log 2>&1
#愤怒的锦鲤
0 0 * * * node /scripts/m_angryKoi.js >> /scripts/logs/m_angryKoi.log 2>&1
#赚30元
0 0,6 * * * node /scripts/m_earn30.js >> /scripts/logs/m_earn30.log 2>&1
#粉丝互动
34 6,18 * * * node /scripts/m_wxFans.js >> /scripts/logs/m_wxFans.log 2>&1
#东东超市商品兑换
59 23 * * * python3 /scripts/m_blueCoin.py >> /scripts/logs/m_blueCoin.log 2>&1
# 抢京豆
#2 0 * * * node /scripts/m_angryBean.js >> /scripts/logs/m_angryBean.log 2>&1
# 升级赚京豆
21 9 * * * node /scripts/m_MMdou.js >> /scripts/logs/m_MMdou.log 2>&1
# 全民摸冰
6 9,12 * * * node /scripts/m_mb.js >> /scripts/logs/m_mb.log 2>&1
# 城城分现金助力
#0 0 * * * node /scripts/m_ccfxj_help.py >> /scripts/logs/m_ccfxj_help.log 2>&1
# 零食街
18 7,20 * * * node /scripts/m_lsj.js >> /scripts/logs/m_lsj.log 2>&1
# 众筹许愿池
20 6,7 * * * node /scripts/m_wish.js >> /scripts/logs/m_wish.log 2>&1
# 芯意制造盒
#50 0 * * * node /scripts/m_xyzzh.js >> /scripts/logs/m_xyzzh.log 2>&1
# 东东世界
#20 6,7 * * * node /scripts/m_ddworld.js >> /scripts/logs/m_ddworld.log 2>&1
# 东东玩家
#20 0 * * * node /scripts/m_ddwj.js >> /scripts/logs/m_ddwj.log 2>&1
