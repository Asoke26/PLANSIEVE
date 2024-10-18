SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 7
AND p.CommentCount <= 37
AND u.CreationDate >= 398
AND u.CreationDate <= 1032

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;