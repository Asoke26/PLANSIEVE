SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= -4
AND u.Reputation >= 53

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;