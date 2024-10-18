SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 5
AND u.CreationDate >= 1119

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;