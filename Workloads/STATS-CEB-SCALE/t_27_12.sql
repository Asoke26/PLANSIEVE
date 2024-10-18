SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 34
AND u.Reputation >= 12813

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;