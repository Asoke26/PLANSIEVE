SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 1089.0
AND p.ViewCount <= 6446.0
AND p.CommentCount >= 8
AND p.CommentCount <= 10
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 17.0
AND c.CreationDate >= 802
AND c.CreationDate <= 1525

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;