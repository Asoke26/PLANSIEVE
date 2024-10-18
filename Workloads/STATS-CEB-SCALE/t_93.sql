SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount>=0
AND u.CreationDate>=176

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;