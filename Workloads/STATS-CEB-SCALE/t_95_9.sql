SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score = 9
AND v.VoteTypeId = 2
AND c.CreationDate >= 834
AND ph.CreationDate <= 1090

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;