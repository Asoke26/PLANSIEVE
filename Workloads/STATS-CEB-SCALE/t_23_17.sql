SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE 

AND u.Id = v.UserId
AND v.UserId = b.UserId;