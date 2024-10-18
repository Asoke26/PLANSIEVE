SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 6
AND p.Score <= 9
AND u.DownVotes >= 37
AND pl.CreationDate <= 1038
AND v.CreationDate >= 372
AND b.Date >= 301
AND b.Date <= 1538

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;