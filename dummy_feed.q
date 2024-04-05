.feed.validSyms:`JPM`GE`GS;
.feed.TP_PORT:5010;
.feed.tph:0Ni;
.feed.times:.z.n;
maxChunkSize:50;
n:1000;

/ .feed.Trade:(n?.feed.validSyms;n?n;n?`float$n);
/ .feed.Quote:(n?.feed.validSyms;n?`float$n;n?`float$n;n?n;n?n);

.feed.trade:(n?.feed.times;n?.feed.validSyms;n?n;n?`float$n);
.feed.quote:(n?.feed.times;n?.feed.validSyms;n?`float$n;n?`float$n;n?n;n?n);

.z.ts:{
  if[null .feed.tph;
    .feed.tph:@[hopen;.feed.TP_PORT;0Ni]];
  if[not null .feed.tph;
    t:rand`trade`quote;
    neg[.feed.tph](`.u.upd;t;flip(1+rand maxChunkSize)?flip .feed t)];
  }

.z.pc:{[h]if[h=.feed.tph;.feed.tph:0Ni]}

\t 5000
