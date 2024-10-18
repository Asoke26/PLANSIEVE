SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 1
AND p.Score <= 79
AND u.DownVotes >= 214
AND pl.CreationDate <= 1215
AND v.CreationDate >= 157
AND b.Date >= 763
AND b.Date <= 846

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;