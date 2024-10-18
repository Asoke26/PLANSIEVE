SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 5
AND p.CommentCount <= 12
AND u.CreationDate >= 794
AND u.CreationDate <= 1210

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;