SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 1109.0
AND p.ViewCount <= 1244.0
AND p.CommentCount >= 3
AND p.CommentCount <= 24
AND p.FavoriteCount >= 28.0
AND p.FavoriteCount <= 32.0
AND c.CreationDate >= 746
AND c.CreationDate <= 1394

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;