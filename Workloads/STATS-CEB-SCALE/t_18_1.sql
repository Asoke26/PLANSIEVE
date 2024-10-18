SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 14
AND u.CreationDate <= 1263

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;