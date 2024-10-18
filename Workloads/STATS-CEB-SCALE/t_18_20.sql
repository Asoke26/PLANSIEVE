SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 26
AND u.CreationDate <= 99

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;