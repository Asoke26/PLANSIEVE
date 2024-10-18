SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 948.0
AND p.ViewCount <= 4119.0
AND p.CommentCount >= 7
AND p.CommentCount <= 33
AND p.FavoriteCount >= 14.0
AND p.FavoriteCount <= 15.0
AND c.CreationDate >= 35
AND c.CreationDate <= 244

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;