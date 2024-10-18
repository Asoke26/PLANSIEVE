SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 31
AND u.CreationDate <= 1348

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;