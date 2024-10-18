SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE 

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;