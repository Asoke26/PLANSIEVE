SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 12
AND u.CreationDate >= 1369

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;