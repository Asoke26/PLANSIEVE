SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 9
AND v.VoteTypeId = 9
AND c.CreationDate >= 453
AND ph.CreationDate <= 1529

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;