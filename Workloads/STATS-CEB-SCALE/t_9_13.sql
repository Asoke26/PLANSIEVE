SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 937.0
AND p.ViewCount <= 1091.0
AND p.CommentCount >= 9
AND p.CommentCount <= 45
AND p.FavoriteCount >= 8.0
AND p.FavoriteCount <= 74.0
AND c.CreationDate >= 367
AND c.CreationDate <= 1173

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;