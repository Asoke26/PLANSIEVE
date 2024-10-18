SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 810
AND u.CreationDate >= 132
AND u.CreationDate <= 789

AND u.Id = c.UserId
AND u.Id = v.UserId;