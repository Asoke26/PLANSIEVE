SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 21
AND v.VoteTypeId = 3
AND c.CreationDate >= 503
AND ph.CreationDate <= 1130

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;