SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -13
AND p.Score <= 59
AND u.DownVotes >= 412
AND pl.CreationDate <= 869
AND v.CreationDate >= 1375
AND b.Date >= 778
AND b.Date <= 1137

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;