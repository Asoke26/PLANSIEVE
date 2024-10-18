SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 4
AND p.Score <= 38
AND u.DownVotes >= 11
AND pl.CreationDate <= 1023
AND v.CreationDate >= 467
AND b.Date >= 746
AND b.Date <= 1268

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;