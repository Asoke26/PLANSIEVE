SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 60
AND u.Reputation >= 10647

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;