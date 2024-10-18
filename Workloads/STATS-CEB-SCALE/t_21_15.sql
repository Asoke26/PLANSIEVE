SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 18
AND p.CommentCount <= 22
AND u.CreationDate >= 1270
AND u.CreationDate <= 1389

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;