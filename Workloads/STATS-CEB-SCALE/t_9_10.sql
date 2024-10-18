SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 109.0
AND p.ViewCount <= 4024.0
AND p.CommentCount >= 0
AND p.CommentCount <= 29
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 21.0
AND c.CreationDate >= 879
AND c.CreationDate <= 1365

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;