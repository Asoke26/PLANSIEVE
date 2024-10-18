SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 34
AND p.CreationDate >= 893
AND p.CreationDate <= 1096

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;