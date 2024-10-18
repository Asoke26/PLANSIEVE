SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 0
AND p.CommentCount <= 17
AND u.CreationDate >= 226
AND u.CreationDate <= 395

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;