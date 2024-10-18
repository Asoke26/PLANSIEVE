SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 26
AND p.CommentCount <= 30
AND u.CreationDate >= 393
AND u.CreationDate <= 1477

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;