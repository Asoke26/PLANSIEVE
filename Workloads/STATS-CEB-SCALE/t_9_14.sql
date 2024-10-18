SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 2396.0
AND p.ViewCount <= 3898.0
AND p.CommentCount >= 4
AND p.CommentCount <= 8
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 19.0
AND c.CreationDate >= 196
AND c.CreationDate <= 1227

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;