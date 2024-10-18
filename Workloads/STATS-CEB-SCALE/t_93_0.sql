SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 28
AND u.CreationDate >= 295

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;