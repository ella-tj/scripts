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
13 10,14,20 * * * node /scripts/jd_superBrand.js >> /scripts/logs/jd_superBrand.log 2>&1
# 金机奖投票
33 4,7 8-20 * * node /scripts/jd_golden_machine.js >> /scripts/logs/jd_golden_machine.log 2>&1
# 京东签到图形验证
16 10 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1
# 积分换话费
33 7,19 * * * node /scripts/jd_dwapp.js >> /scripts/logs/jd_dwapp.log 2>&1
# 京东通天塔--签到
3 1 * * * node /scripts/jd_m_sign.js >> /scripts/logs/jd_m_sign.log 2>&1
# 东东世界兑换
3 0,17 * * * node /scripts/jd_ddworld_exchange.js >> /scripts/logs/jd_ddworld_exchange.log 2>&1
# 介么签到
37 0,11 * * * node /scripts/jd_genz.js >> /scripts/logs/jd_genz.log 2>&1
# 京东翻牌签到
10 8 * * * node /scripts/jd_fanpai_sign.js >> /scripts/logs/jd_fanpai_sign.log 2>&1
# 京豆兑换为喜豆
33 9 * * * node /scripts/jd_exchangejxbeans.js >> /scripts/logs/jd_exchangejxbeans.log 2>&1

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
#12 0-23/6 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
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
# 小鸽有礼
13 1,22,23 * * * node /scripts/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1
# 金融养猪
32 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 东东工厂
26 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 赚京豆(微信小程序)
10 1,7,22 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
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
45 1,2,3 * * * node /scripts/jd_sendBeans.js >> /scripts/logs/jd_sendBeans.log 2>&1
# 早起福利
30 6 * * * node /scripts/jd_goodMorning.js >> /scripts/logs/jd_goodMorning.log 2>&1
# 早起赢现金
30 7 * * * node /scripts/jd_morningSc.js >> /scripts/logs/jd_morningSc.log 2>&1
# 领券中心签到
15 8 * * * node /scripts/jd_ccSign.js >> /scripts/logs/jd_ccSign.log 2>&1
# 热血心跳,狂解压
#5 6,18 1-16,21-30 9,10 * node /scripts/jd_decompression.js >> /scripts/logs/jd_decompression.log 2>&1
# 京喜签到-喜豆
30 2,9 * * * node /scripts/jx_sign_xd.js >> /scripts/logs/jx_sign_xd.log 2>&1
# 领券中心签到
19 7 * * * node /scripts/jd_jchsign.js >> /scripts/logs/jd_jchsign.log 2>&1
##############京东-玩一玩任务区##############
#京东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#京东健康社区收集健康能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
# 东东农场
15 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 京东宠汪汪
#15 1-23/2 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
# 京东宠汪汪喂食
#15 1-23/1 * * *node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 京东宠汪汪积分兑换奖品
#59 7,15,23 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
# 京东宠汪汪偷好友积分与狗粮
#10 1-22/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 京东宠汪汪邀请助力与赛跑助力
#15 10 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
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
# 京东小魔方
31 2,8 * * * node /scripts/jd_mf.js >> /scripts/logs/jd_mf.log 2>&1
# 芥末签到
11 22 * * * node /scripts/jd_zsign.js >> /scripts/logs/jd_zsign.log 2>&1
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
#30 10 * * * node /scripts/m_try.js >> /scripts/logs/m_try.log 2>&1
#赚30元
#0 0,6 * * * node /scripts/m_earn30.js >> /scripts/logs/m_earn30.log 2>&1
# 升级赚京豆
21 9 * * * node /scripts/m_MMdou.js >> /scripts/logs/m_MMdou.log 2>&1
# 全民摸冰
6 9,12 * * * node /scripts/m_mb.js >> /scripts/logs/m_mb.log 2>&1
# 众筹许愿池
20 6,7 * * * node /scripts/m_wish.js >> /scripts/logs/m_wish.log 2>&1
# 芯意制造盒
#50 0 * * * node /scripts/m_xyzzh.js >> /scripts/logs/m_xyzzh.log 2>&1
# 东东世界
#20 6,7 * * * node /scripts/m_ddworld.js >> /scripts/logs/m_ddworld.log 2>&1
# 东东玩家
#20 0 * * * node /scripts/m_ddwj.js >> /scripts/logs/m_ddwj.log 2>&1
##############mod_scripts##############
# 东东超市商品兑换
59 23 * * * python3 /scripts/mod_scripts/jd_blueCoin.py >> /scripts/logs/jd_blueCoin.log 2>&1
# 京喜工厂开团
1,15,30 0 * * * python3 /scripts/mod_scripts/jd_jxgc_tuan.py >> /scripts/logs/jd_jxgc_tuan.log 2>&1
# 全民抢京豆
0 0 * 10,11 * python3 /scripts/mod_scripts/jd_qjd.py >> /scripts/logs/jd_qjd.log 2>&1
# 赚京豆
0,30 0 * * * python3 /scripts/mod_scripts/jd_zjd.py >> /scripts/logs/jd_zjd.log 2>&1
# 金榜年终奖
0 0 * * * python3 /scripts/mod_scripts/jd_golden_yearendBonus.py >> /scripts/logs/jd_golden_yearendBonus.log 2>&1
# 安静的锦鲤
0 0 * * * node /scripts/jd_angryKoi.js >> /scripts/logs/jd_angryKoi.log 2>&1
# 发财挖宝内部互助
30 0,15 * * * python3 /scripts/mod_scripts/jd_wabao_help.py >> /scripts/logs/jd_wabao_help.log 2>&1
# 发财挖宝
30 0,15 * * * python3 /scripts/mod_scripts/jd_wabao.py >> /scripts/logs/jd_wabao.log 2>&1
# 逛好物，赚京豆
1 0 * * * python3 /scripts/mod_scripts/jd_ghwzjd.py >> /scripts/logs/jd_ghwzjd.log 2>&1
# 冬香节送福利
5 15 * * * python3 /scripts/mod_scripts/jd_dongxiang_benefits.py >> /scripts/logs/jd_dongxiang_benefits.log 2>&1
# 京东小魔方
31 8 * * * node /scripts/mod_scripts/jd_mf_exchange.js >> /scripts/logs/jd_mf_exchange.log 2>&1
# 发现好货
27 10,16 * 12 * node /scripts/mod_scripts/jd_fxhh.js >> /scripts/logs/jd_fxhh.log 2>&1
# 星店长
1 10 * * * python3 /scripts/mod_scripts/jd_xdz.py >> /scripts/logs/jd_xdz.log 2>&1
# 众筹许愿池
40 0,2 * * * node /scripts/mod_scripts/jd_wish.js >> /scripts/logs/jd_wish.log 2>&1
# 年货签到
23 7 * * * node /scripts/mod_scripts/jd_nh_sign.js >> /scripts/logs/jd_nh_sign.log 2>&1
# 京东金榜
11 6 * * * node /scripts/mod_scripts/jd_gold_sign.js >> /scripts/logs/jd_gold_sign.log 2>&1
# 京东自动评价
1 10 * * * python3 /scripts/mod_scripts/jd_Evaluation.py >> /scripts/logs/jd_Evaluation.log 2>&1
# 炸年兽
13 0-23/5 * * * node /scripts/mod_scripts/jd_zns.js >> /scripts/logs/jd_zns.log 2>&1
# 城城分现金助力
0 0 9-21 1 * python3 /scripts/mod_scripts/jd_ccfxj_help.py >> /scripts/logs/jd_ccfxj_help.log 2>&1
# 财富岛兑换红包
#50 59 * * * * python3 /scripts/mod_scripts/jx_cfd_dh.py >> /scripts/logs/jx_cfd_dh.log 2>&1
# 京东美妆签到
10 6 * * * node /scripts/mod_scripts/jd_sign_graphics1.js >> /scripts/logs/jd_sign_graphics1.log 2>&1
# 头文字J
10 8 * * * node /scripts/mod_scripts/jd_mpdzcar.js >> /scripts/logs/jd_mpdzcar.log 2>&1
# 头文字J助力
10 3 * * * node /scripts/mod_scripts/jd_mpdzcar_help.js >> /scripts/logs/jd_mpdzcar_help.log 2>&1
# 京东超级盒子
21 3,13 * * * node /scripts/mod_scripts/jd_cjhz.js >> /scripts/logs/jd_cjhz.log 2>&1
# 年货节红包
5 0,12,20 * * * node /scripts/mod_scripts/jd_nhRed.js >> /scripts/logs/jd_nhRed.log 2>&1
# 京喜天天压岁钱
45 0,16 * * * node /scripts/mod_scripts/jd_ttysq.js >> /scripts/logs/jd_ttysq.log 2>&1
# 白条抽奖
9 9 13-31,1-7 1,2 * node /scripts/mod_scripts/jd_bt_sign.js >> /scripts/logs/jd_bt_sign.log 2>&1
# 轩辕虎越,风生水起
23 3,16 6-31 1 * node /scripts/mod_scripts/jd_xyhy.js >> /scripts/logs/jd_xyhy.log 2>&1
# 萌虎摇摇乐
45 0,16 * * * node /scripts/mod_scripts/jd_tiger.js >> /scripts/logs/jd_tiger.log 2>&1
# 狂撒3亿签到
45 0,16 * * * node /scripts/mod_scripts/jd_ms_sign.js >> /scripts/logs/jd_ms_sign.log 2>&1
# 京东超市年货日历
33 4,16 * * * node /scripts/mod_scripts/jd_year.js >> /scripts/logs/jd_year.log 2>&1
