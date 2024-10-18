SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 6
AND p.Score <= 106
AND u.DownVotes >= 63
AND pl.CreationDate <= 388
AND v.CreationDate >= 412
AND b.Date >= 619
AND b.Date <= 1159

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;