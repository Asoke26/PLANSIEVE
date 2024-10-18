SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 13
AND p.Score <= 66
AND u.DownVotes >= 779
AND pl.CreationDate <= 1515
AND v.CreationDate >= 1261
AND b.Date >= 426
AND b.Date <= 910

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;