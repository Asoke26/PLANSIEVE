SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 0
AND v.VoteTypeId = 8
AND c.CreationDate >= 377
AND ph.CreationDate <= 1201

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;