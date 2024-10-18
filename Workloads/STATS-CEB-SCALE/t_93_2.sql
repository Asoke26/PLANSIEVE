SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 1
AND u.CreationDate >= 435

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;