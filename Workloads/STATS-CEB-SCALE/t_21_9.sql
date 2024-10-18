SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 8
AND p.CommentCount <= 30
AND u.CreationDate >= 365
AND u.CreationDate <= 1272

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;