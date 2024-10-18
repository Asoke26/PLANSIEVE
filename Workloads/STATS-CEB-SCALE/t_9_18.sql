SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 2878.0
AND p.ViewCount <= 6188.0
AND p.CommentCount >= 5
AND p.CommentCount <= 27
AND p.FavoriteCount >= 46.0
AND p.FavoriteCount <= 78.0
AND c.CreationDate >= 555
AND c.CreationDate <= 1132

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;