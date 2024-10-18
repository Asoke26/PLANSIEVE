SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 2
AND v.VoteTypeId = 6
AND c.CreationDate >= 387
AND ph.CreationDate <= 1511

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;