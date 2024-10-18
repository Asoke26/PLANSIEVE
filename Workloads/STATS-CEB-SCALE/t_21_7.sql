SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 29
AND p.CommentCount <= 31
AND u.CreationDate >= 32
AND u.CreationDate <= 585

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;