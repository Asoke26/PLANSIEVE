SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 7
AND p.CommentCount <= 35
AND u.CreationDate >= 387
AND u.CreationDate <= 683

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;