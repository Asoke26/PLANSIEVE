SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 5
AND p.CreationDate >= 221
AND p.CreationDate <= 867

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;