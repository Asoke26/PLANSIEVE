SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -13
AND p.Score <= 89
AND u.DownVotes >= 212
AND pl.CreationDate <= 1340
AND v.CreationDate >= 933
AND b.Date >= 1190
AND b.Date <= 1275

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;