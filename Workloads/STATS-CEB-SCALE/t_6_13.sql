SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 17
AND p.CreationDate >= 230
AND p.CreationDate <= 1124

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;