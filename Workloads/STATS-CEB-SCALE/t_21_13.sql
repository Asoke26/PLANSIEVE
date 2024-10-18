SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 32
AND p.CommentCount <= 35
AND u.CreationDate >= 682
AND u.CreationDate <= 1519

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;