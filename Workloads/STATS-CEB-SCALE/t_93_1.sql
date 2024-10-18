SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 3
AND u.CreationDate >= 1454

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;