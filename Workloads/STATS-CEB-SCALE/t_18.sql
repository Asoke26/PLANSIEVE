SELECT COUNT(*)
 FROM posts p,
postLinks pl,
users u
WHERE p.CommentCount<=17
AND u.CreationDate<=1543

AND p.Id = pl.PostId
AND p.OwnerUserId = u.Id;