SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 8
AND p.CommentCount <= 18
AND u.CreationDate >= 402
AND u.CreationDate <= 931

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;