SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 37
AND u.CreationDate >= 321

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;