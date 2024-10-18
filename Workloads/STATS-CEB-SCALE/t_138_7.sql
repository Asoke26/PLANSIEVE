SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 46
AND p.Score <= 66
AND u.DownVotes >= 24
AND pl.CreationDate <= 1490
AND v.CreationDate >= 30
AND b.Date >= 707
AND b.Date <= 788

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;