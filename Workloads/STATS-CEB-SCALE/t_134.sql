SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE c.Score=0
AND p.PostTypeId=1
AND p.ViewCount>=0
AND p.ViewCount<=4157
AND p.FavoriteCount=0
AND p.CreationDate<=1539

AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = c.UserId;