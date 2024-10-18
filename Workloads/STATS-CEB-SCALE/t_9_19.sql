SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 86.0
AND p.ViewCount <= 615.0
AND p.CommentCount >= 5
AND p.CommentCount <= 6
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 127.0
AND c.CreationDate >= 427
AND c.CreationDate <= 582

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;