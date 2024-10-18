SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 11
AND p.CreationDate >= 1133
AND p.CreationDate <= 1364

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;