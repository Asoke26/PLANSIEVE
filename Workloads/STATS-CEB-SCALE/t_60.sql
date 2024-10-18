SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score>=0
AND p.Score<=13
AND p.FavoriteCount>=0
AND pl.LinkTypeId=1
AND v.VoteTypeId=2
AND u.Reputation>=1
AND c.CreationDate>=45
AND c.CreationDate<=1542
AND pl.CreationDate>=262
AND v.CreationDate<=1542
AND u.CreationDate>=240
AND u.CreationDate<=1532

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;