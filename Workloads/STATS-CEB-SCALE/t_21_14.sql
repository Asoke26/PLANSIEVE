SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 6
AND p.CommentCount <= 32
AND u.CreationDate >= 557
AND u.CreationDate <= 1149

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;