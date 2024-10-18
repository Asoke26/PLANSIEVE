SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount>=0
AND p.CommentCount<=12
AND u.CreationDate>=30
AND u.CreationDate<=1539

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;