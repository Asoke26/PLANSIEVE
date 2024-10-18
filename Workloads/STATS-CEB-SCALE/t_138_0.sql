SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 17
AND p.Score <= 123
AND u.DownVotes >= 125
AND pl.CreationDate <= 955
AND v.CreationDate >= 603
AND b.Date >= 1019
AND b.Date <= 1275

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;