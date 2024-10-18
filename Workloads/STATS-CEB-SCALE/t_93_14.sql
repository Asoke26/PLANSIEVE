SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 6
AND u.CreationDate >= 83

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;