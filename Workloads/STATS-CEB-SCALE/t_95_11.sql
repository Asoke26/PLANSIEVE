SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 5
AND v.VoteTypeId = 2
AND c.CreationDate >= 78
AND ph.CreationDate <= 344

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;