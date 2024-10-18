SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.PostTypeId=1
AND p.ViewCount>=0
AND p.ViewCount<=25597
AND p.CommentCount>=0
AND p.CommentCount<=11
AND p.FavoriteCount>=0
AND u.DownVotes<=0
AND u.UpVotes>=0
AND u.UpVotes<=123
AND c.CreationDate>=58
AND c.CreationDate<=1528

AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = c.UserId;