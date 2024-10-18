SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 15
AND p.CreationDate >= 479
AND p.CreationDate <= 647

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;