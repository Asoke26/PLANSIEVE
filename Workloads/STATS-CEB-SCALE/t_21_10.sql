SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 17
AND p.CommentCount <= 23
AND u.CreationDate >= 1379
AND u.CreationDate <= 1513

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;