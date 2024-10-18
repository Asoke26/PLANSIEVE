SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount <= 37
AND u.CreationDate <= 340

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;