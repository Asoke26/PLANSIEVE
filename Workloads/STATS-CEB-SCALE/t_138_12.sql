SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 44
AND p.Score <= 87
AND u.DownVotes >= 3
AND pl.CreationDate <= 906
AND v.CreationDate >= 431
AND b.Date >= 30
AND b.Date <= 1529

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;