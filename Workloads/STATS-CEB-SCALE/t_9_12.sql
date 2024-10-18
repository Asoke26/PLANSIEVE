SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 799.0
AND p.ViewCount <= 3128.0
AND p.CommentCount >= 14
AND p.CommentCount <= 45
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 32.0
AND c.CreationDate >= 27
AND c.CreationDate <= 663

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;