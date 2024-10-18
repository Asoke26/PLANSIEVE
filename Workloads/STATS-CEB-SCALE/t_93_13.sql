SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 24
AND u.CreationDate >= 1129

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;