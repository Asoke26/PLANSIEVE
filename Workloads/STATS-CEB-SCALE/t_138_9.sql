SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 1
AND p.Score <= 184
AND u.DownVotes >= 351
AND pl.CreationDate <= 1490
AND v.CreationDate >= 1151
AND b.Date >= 303
AND b.Date <= 590

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;