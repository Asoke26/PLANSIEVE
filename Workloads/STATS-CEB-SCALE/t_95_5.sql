SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 13
AND v.VoteTypeId = 5
AND c.CreationDate >= 459
AND ph.CreationDate <= 735

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;