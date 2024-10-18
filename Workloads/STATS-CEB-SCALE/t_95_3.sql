SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 7
AND v.VoteTypeId = 9
AND c.CreationDate >= 440
AND ph.CreationDate <= 244

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;