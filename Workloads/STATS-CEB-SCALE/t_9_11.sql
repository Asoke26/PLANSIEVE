SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 678.0
AND p.ViewCount <= 8366.0
AND p.CommentCount >= 5
AND p.CommentCount <= 21
AND p.FavoriteCount >= 27.0
AND p.FavoriteCount <= 80.0
AND c.CreationDate >= 717
AND c.CreationDate <= 839

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;