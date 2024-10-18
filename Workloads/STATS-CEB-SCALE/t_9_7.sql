SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 510.0
AND p.ViewCount <= 4852.0
AND p.CommentCount >= 2
AND p.CommentCount <= 3
AND p.FavoriteCount >= 7.0
AND p.FavoriteCount <= 26.0
AND c.CreationDate >= 239
AND c.CreationDate <= 276

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;