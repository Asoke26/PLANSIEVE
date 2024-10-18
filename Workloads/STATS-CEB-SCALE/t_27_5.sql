SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 52
AND u.Reputation >= 19585

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;