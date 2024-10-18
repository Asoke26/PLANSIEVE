SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 29
AND p.CreationDate >= 164
AND p.CreationDate <= 177

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;