SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl
WHERE p.CommentCount <= 3
AND p.CreationDate >= 1471
AND p.CreationDate <= 1495

AND c.UserId = p.OwnerUserId
AND p.Id = pl.PostId;