SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 25
AND u.CreationDate >= 1242

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;