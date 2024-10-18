SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -10
AND p.Score <= 85
AND u.DownVotes >= 49
AND pl.CreationDate <= 677
AND v.CreationDate >= 310
AND b.Date >= 987
AND b.Date <= 1231

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;