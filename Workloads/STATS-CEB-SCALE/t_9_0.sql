SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 192.0
AND p.ViewCount <= 1962.0
AND p.CommentCount >= 0
AND p.CommentCount <= 45
AND p.FavoriteCount >= 28.0
AND p.FavoriteCount <= 40.0
AND c.CreationDate >= 920
AND c.CreationDate <= 1434

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;