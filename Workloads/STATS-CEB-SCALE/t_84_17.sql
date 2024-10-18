SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 589

AND u.Id = c.UserId
AND u.Id = v.UserId;