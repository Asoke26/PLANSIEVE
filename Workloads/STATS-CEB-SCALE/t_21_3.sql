SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 25
AND p.CommentCount <= 30
AND u.CreationDate >= 198
AND u.CreationDate <= 1462

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;