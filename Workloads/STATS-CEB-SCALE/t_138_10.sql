SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -5
AND p.Score <= 75
AND u.DownVotes >= 26
AND pl.CreationDate <= 1387
AND v.CreationDate >= 1281
AND b.Date >= 827
AND b.Date <= 1405

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;