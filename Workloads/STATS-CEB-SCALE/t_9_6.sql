SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 563.0
AND p.ViewCount <= 4854.0
AND p.CommentCount >= 12
AND p.CommentCount <= 20
AND p.FavoriteCount >= 17.0
AND p.FavoriteCount <= 42.0
AND c.CreationDate >= 398
AND c.CreationDate <= 962

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;