SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 20
AND u.Reputation >= 4546

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;