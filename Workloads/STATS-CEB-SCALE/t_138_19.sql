SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -9
AND p.Score <= 88
AND u.DownVotes >= 91
AND pl.CreationDate <= 1358
AND v.CreationDate >= 830
AND b.Date >= 932
AND b.Date <= 1262

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;