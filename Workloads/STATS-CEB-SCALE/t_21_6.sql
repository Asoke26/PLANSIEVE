SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 24
AND p.CommentCount <= 30
AND u.CreationDate >= 704
AND u.CreationDate <= 831

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;