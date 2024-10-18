SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount>=0
AND p.ViewCount<=2897
AND p.CommentCount>=0
AND p.CommentCount<=16
AND p.FavoriteCount>=0
AND p.FavoriteCount<=10
AND c.CreationDate>=44
AND c.CreationDate<=1539

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;