SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 11
AND p.CreationDate >= 776
AND p.CreationDate <= 1206

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;