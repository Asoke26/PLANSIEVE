SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 21
AND p.Score <= 34
AND u.DownVotes >= 43
AND pl.CreationDate <= 403
AND v.CreationDate >= 1450
AND b.Date >= 73
AND b.Date <= 218

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;