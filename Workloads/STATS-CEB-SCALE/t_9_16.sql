SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 688.0
AND p.ViewCount <= 11927.0
AND p.CommentCount >= 12
AND p.CommentCount <= 25
AND p.FavoriteCount >= 23.0
AND p.FavoriteCount <= 43.0
AND c.CreationDate >= 481
AND c.CreationDate <= 1032

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;