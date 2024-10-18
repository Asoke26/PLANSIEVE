SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 16
AND u.CreationDate <= 1539

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;