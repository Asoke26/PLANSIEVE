SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 1
AND v.VoteTypeId = 16
AND c.CreationDate >= 865
AND ph.CreationDate <= 1131

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;