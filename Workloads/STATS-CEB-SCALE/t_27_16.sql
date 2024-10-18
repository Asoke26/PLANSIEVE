SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= -5
AND u.Reputation >= 1290

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;