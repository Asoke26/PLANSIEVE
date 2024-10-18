SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 1
AND v.VoteTypeId = 16
AND c.CreationDate >= 1213
AND ph.CreationDate <= 695

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;