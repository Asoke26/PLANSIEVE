SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 35
AND u.CreationDate <= 252

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;