SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE c.Score=0
AND v.VoteTypeId=2
AND c.CreationDate>=65
AND ph.CreationDate<=1536

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;