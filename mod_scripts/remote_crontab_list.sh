# 东东超市商品兑换
59 23 * * * python3 /scripts/jd_blueCoin.py >> /scripts/logs/jd_blueCoin.log 2>&1
# 京喜工厂开团
1,15,30 0 * * * python3 /scripts/jd_jxgc_tuan.py >> /scripts/logs/jd_jxgc_tuan.log 2>&1
# 全民抢京豆
0 0 * 10,11 * python3 /scripts/jd_qjd.py >> /scripts/logs/jd_qjd.log 2>&1
# 京东饭粒
30 14 * 10,11 * python3 /scripts/mod_scripts/jd_fanli.py >> /scripts/logs/jd_fanli.log 2>&1
