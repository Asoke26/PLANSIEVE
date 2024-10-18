SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 492.0
AND p.ViewCount <= 1314.0
AND p.CommentCount >= 8
AND p.CommentCount <= 33
AND p.FavoriteCount >= 3.0
AND p.FavoriteCount <= 27.0
AND c.CreationDate >= 720
AND c.CreationDate <= 737

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;