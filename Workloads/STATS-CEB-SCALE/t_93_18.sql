SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 35
AND u.CreationDate >= 1130

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;