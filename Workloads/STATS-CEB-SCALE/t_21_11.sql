SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 31
AND p.CommentCount <= 41
AND u.CreationDate >= 1315
AND u.CreationDate <= 1327

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;