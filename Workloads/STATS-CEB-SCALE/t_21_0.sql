SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 15
AND p.CommentCount <= 23
AND u.CreationDate >= 792
AND u.CreationDate <= 1190

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;