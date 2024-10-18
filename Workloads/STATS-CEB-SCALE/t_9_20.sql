SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 189.0
AND p.ViewCount <= 1085.0
AND p.CommentCount >= 1
AND p.CommentCount <= 21
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 30.0
AND c.CreationDate >= 47
AND c.CreationDate <= 96

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;