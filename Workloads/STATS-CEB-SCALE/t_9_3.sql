SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 1017.0
AND p.ViewCount <= 1296.0
AND p.CommentCount >= 4
AND p.CommentCount <= 29
AND p.FavoriteCount >= 12.0
AND p.FavoriteCount <= 41.0
AND c.CreationDate >= 880
AND c.CreationDate <= 1211

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;