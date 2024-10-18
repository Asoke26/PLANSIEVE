SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 22
AND u.CreationDate <= 938

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;