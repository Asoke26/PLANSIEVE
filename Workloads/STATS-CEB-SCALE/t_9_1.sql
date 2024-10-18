SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 648.0
AND p.ViewCount <= 5030.0
AND p.CommentCount >= 3
AND p.CommentCount <= 13
AND p.FavoriteCount >= 25.0
AND p.FavoriteCount <= 79.0
AND c.CreationDate >= 572
AND c.CreationDate <= 1232

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;