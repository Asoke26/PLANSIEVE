SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -9
AND p.Score <= 23
AND u.DownVotes >= 47
AND pl.CreationDate <= 287
AND v.CreationDate >= 198
AND b.Date >= 1041
AND b.Date <= 1430

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;