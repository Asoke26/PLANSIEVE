SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 4
AND u.CreationDate >= 1518

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;