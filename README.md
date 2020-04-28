## DUMMY FEED
```
/workspace/kdb-tick$ q dummy_feed.q 
verify:
.feed
*\p 5010 and tp will subscribe to this
```
## Ticker Plant
```
/workspace/kdb-tick$ q tick.q -p 5010
verify:
.u
.u.endofday[]
```
## RDB
```
/workspace/kdb-tick/db$ q ../tick/r.q :5010 -p 5011
verify:
count trade
count quote
```
## HDB
```
~/workspace/kdb-tick$ q db -p 5012
verify:
count trade
count quote
```
