SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 2
AND p.CommentCount <= 11
AND u.CreationDate >= 350
AND u.CreationDate <= 609

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;