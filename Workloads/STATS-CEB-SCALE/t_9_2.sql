SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 1121.0
AND p.ViewCount <= 3153.0
AND p.CommentCount >= 4
AND p.CommentCount <= 28
AND p.FavoriteCount >= 19.0
AND p.FavoriteCount <= 42.0
AND c.CreationDate >= 705
AND c.CreationDate <= 1406

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;