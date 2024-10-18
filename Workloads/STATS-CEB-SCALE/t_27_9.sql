SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 44
AND u.Reputation >= 10476

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;