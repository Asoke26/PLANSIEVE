SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 34
AND p.CreationDate >= 1238
AND p.CreationDate <= 1302

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;