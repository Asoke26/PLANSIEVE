SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 18
AND p.CommentCount <= 28
AND u.CreationDate >= 79
AND u.CreationDate <= 551

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;