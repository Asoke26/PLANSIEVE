SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 9
AND u.CreationDate >= 1154

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;