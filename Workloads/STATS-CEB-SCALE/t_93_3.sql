SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 17
AND u.CreationDate >= 247

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;