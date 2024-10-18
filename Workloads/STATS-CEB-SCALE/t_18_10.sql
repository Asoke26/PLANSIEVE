SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 6
AND u.CreationDate <= 267

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;