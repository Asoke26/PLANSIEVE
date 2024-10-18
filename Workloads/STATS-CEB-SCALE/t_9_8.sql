SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 448.0
AND p.ViewCount <= 2111.0
AND p.CommentCount >= 6
AND p.CommentCount <= 9
AND p.FavoriteCount >= 13.0
AND p.FavoriteCount <= 23.0
AND c.CreationDate >= 165
AND c.CreationDate <= 655

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;