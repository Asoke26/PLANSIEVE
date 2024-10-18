SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.Score >= -19

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;