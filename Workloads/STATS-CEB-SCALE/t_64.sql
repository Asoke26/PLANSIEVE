SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score=0
AND p.PostTypeId=1
AND p.FavoriteCount>=0
AND p.FavoriteCount<=2
AND ph.PostHistoryTypeId=5
AND u.DownVotes<=0
AND u.UpVotes>=0
AND c.CreationDate>=28
AND c.CreationDate<=1542
AND u.CreationDate>=88

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;