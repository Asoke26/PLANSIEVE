SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 1
AND p.CommentCount <= 23
AND u.CreationDate >= 892
AND u.CreationDate <= 1038

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;