---
--- Generated by Luanalysis
--- Created by liquanhui.
--- DateTime: 2023/9/2 20:46
---
-- 先根据uuid找到锁，然后删除掉锁，没有获取到就是锁已释放或不存在
if redis.call("GET", KEYS[1]) == ARGV[1] then
    return redis.call("DEL", key)
else
    return 0
end