SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 18
AND v.VoteTypeId = 5
AND c.CreationDate >= 42
AND ph.CreationDate <= 1065

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;