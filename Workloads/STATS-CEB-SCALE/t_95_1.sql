SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 4
AND v.VoteTypeId = 3
AND c.CreationDate >= 515
AND ph.CreationDate <= 480

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;