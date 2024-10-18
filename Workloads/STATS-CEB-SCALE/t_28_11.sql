SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 5
AND p.Score >= -10

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;