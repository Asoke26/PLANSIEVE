SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 12
AND p.CommentCount <= 15
AND u.CreationDate >= 1381
AND u.CreationDate <= 1523

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;